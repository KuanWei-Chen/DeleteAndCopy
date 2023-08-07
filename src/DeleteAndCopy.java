import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.List;

public class DeleteAndCopy {
    private static final List<String> WITHOUT_DELETE_LIST = Arrays.asList(".git", "init");
    private static final List<String> WITHOUT_COPY_LIST = Arrays.asList(".git", ".gradle", ".idea", "build", "generated");

    public static void main(String[] args) throws IOException {
        // app-bff
        deleteAndCopy("D:\\TPI\\消金\\code\\tpi\\vmb\\vn-loancloud-app-bff", "D:\\TPI\\消金\\code\\cathay\\vmb\\app-bff");
        // channel-bo-bff
        deleteAndCopy("D:\\TPI\\消金\\code\\tpi\\vmb\\vn-loancloud-channel-bo-bff", "D:\\TPI\\消金\\code\\cathay\\vmb\\channel-bo-bff");
        // member-cl
        deleteAndCopy("D:\\TPI\\消金\\code\\tpi\\vmb\\vn-loancloud-user-cl", "D:\\TPI\\消金\\code\\cathay\\vmb\\member-cl");
        // channel-bo-cl
        deleteAndCopy("D:\\TPI\\消金\\code\\tpi\\vmb\\vn-loancloud-channel-bo-cl", "D:\\TPI\\消金\\code\\cathay\\vmb\\channel-bo-cl");
        // channel-notification-bl
        deleteAndCopy("D:\\TPI\\消金\\code\\tpi\\vmb\\vn-loancloud-channel-notification-bl", "D:\\TPI\\消金\\code\\cathay\\vmb\\channel-notification-bl");
        // scheduler
        deleteAndCopy("D:\\TPI\\消金\\code\\tpi\\vmb\\scheduler", "D:\\TPI\\消金\\code\\cathay\\vmb\\scheduler");


        // data-centralized
        deleteAndCopy("D:\\TPI\\消金\\code\\tpi\\vcp\\vn-loancloud-data-centralized", "D:\\TPI\\消金\\code\\cathay\\vcp\\data-centralized");
        // esign-bl
        deleteAndCopy("D:\\TPI\\消金\\code\\tpi\\vcp\\vn-loancloud-esign-bl", "D:\\TPI\\消金\\code\\cathay\\vcp\\esign-bl");
        // message-center
        deleteAndCopy("D:\\TPI\\消金\\code\\tpi\\vcp\\vn-loancloud-message-center", "D:\\TPI\\消金\\code\\cathay\\vcp\\msg-center");
        // payment
        deleteAndCopy("D:\\TPI\\消金\\code\\tpi\\vcp\\vn-loancloud-payment", "D:\\TPI\\消金\\code\\cathay\\vcp\\payment");
        // payment-momo-bff
        deleteAndCopy("D:\\TPI\\消金\\code\\tpi\\vcp\\vn-loancloud-payment-momo-bff", "D:\\TPI\\消金\\code\\cathay\\vcp\\payment-momo-bff");
        // payment-momo-bl
        deleteAndCopy("D:\\TPI\\消金\\code\\tpi\\vcp\\vn-loancloud-payment-momo-bl", "D:\\TPI\\消金\\code\\cathay\\vcp\\payment-momo-bl");
        // payment-napas-bff
        deleteAndCopy("D:\\TPI\\消金\\code\\tpi\\vcp\\vn-loancloud-payment-napas-bff", "D:\\TPI\\消金\\code\\cathay\\vcp\\payment-napas-bff");
        // payment-napas-bl
        deleteAndCopy("D:\\TPI\\消金\\code\\tpi\\vcp\\vn-loancloud-payment-napas-bl", "D:\\TPI\\消金\\code\\cathay\\vcp\\payment-napas-bl");
        // middle-bo-cl
        deleteAndCopy("D:\\TPI\\消金\\code\\tpi\\vcp\\vn-loancloud-middle-bo-cl", "D:\\TPI\\消金\\code\\cathay\\vcp\\middle-bo-cl");
        // middle-bo-bff
        deleteAndCopy("D:\\TPI\\消金\\code\\tpi\\vcp\\vn-loancloud-middle-bo-bff", "D:\\TPI\\消金\\code\\cathay\\vcp\\middle-bo-bff");
        // virtual-account
        deleteAndCopy("D:\\TPI\\消金\\code\\tpi\\vcp\\vn-loancloud-virtual-account", "D:\\TPI\\消金\\code\\cathay\\vcp\\virtual-account-service");
        // itext
        deleteAndCopy("D:\\TPI\\消金\\code\\tpi\\vcp\\itext", "D:\\TPI\\消金\\code\\cathay\\vcp\\itext");
        // cdw-batch
        deleteAndCopy("D:\\TPI\\消金\\code\\tpi\\vcp\\vn-loancloud-cdw-batch", "D:\\TPI\\消金\\code\\cathay\\vcp\\cdw-batch-java");
        // file-batch
        deleteAndCopy("D:\\TPI\\消金\\code\\tpi\\vcp\\vn-loancloud-file-batch", "D:\\TPI\\消金\\code\\cathay\\vcp\\file-batch");
        // housekeeping-batch
        deleteAndCopy("D:\\TPI\\消金\\code\\tpi\\vcp\\vn-loancloud-housekeeping-batch", "D:\\TPI\\消金\\code\\cathay\\vcp\\housekeeping-batch");
    }

    private static void deleteAndCopy(String sourcePath, String targetPath) throws IOException {
        File targetFolder = new File(targetPath);
        File sourceFolder = new File(sourcePath);

        if(!targetFolder.isDirectory() || targetFolder.listFiles() == null)
        {
            System.out.println("清除目標非資料夾或為空");
            return;
        }
        for (File file: targetFolder.listFiles()){
            if(!WITHOUT_DELETE_LIST.contains(file.getName()))
            {
                delete(file);
            }
        }

        copy(sourceFolder.toPath(), sourceFolder, targetFolder);
    }
    private static void delete(File file){
        if(file == null)
        {
         return;
        }

        if(file.isDirectory() && file.listFiles() != null)
        {
            for (File subFile: file.listFiles())
            {
                delete(subFile);
            }
        }

        file.delete();
    }

    private static void copy(Path rootPath,File sourceFile, File targetFile) throws IOException {
        Path targetPath = Paths.get(targetFile.getPath());
        if (sourceFile == null || !targetFile.isDirectory()) {
            System.out.println("目標非資料夾");
            return;
        }

        for (File subFile : sourceFile.listFiles()) {
            // 如果在除外名稱內且在ROOT路徑，則忽略
            if (!subFile.getParent().equals(rootPath.toString()) || !WITHOUT_COPY_LIST.contains(subFile.getName())) {
                Files.copy(subFile.toPath(), Paths.get(targetPath.toString(), rootPath.relativize(subFile.toPath()).toString()));
                if(subFile.isDirectory())
                {
                    copy(rootPath, subFile, targetFile);
                }
            }
        }
    }
}
