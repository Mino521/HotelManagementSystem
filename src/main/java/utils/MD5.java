package utils;

import java.security.MessageDigest;

public class MD5 {
    private static final String[] digital = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e",
            "f" };

    private static String initMD5(String txt) throws Exception {
        // get the core class that encapsulates the MD5 algorithm
        MessageDigest md5 = MessageDigest.getInstance("MD5");
        // Convert the plaintext into a byte array of length 16 after MD5 encryption ---- 32-bit string (hexadecimal)
        byte[] bytes = md5.digest(txt.getBytes("UTF-8"));
        // hold the final ciphertext
        String miWen = "";
        for (byte b : bytes) {
            int temp = b;
            if (temp < 0) {
                temp += 256;
            }
            // temp must be positive (between 0 and 15)
            int index1 = temp / 16;// 取商
            int index2 = temp % 16;// 取余
            miWen += digital[index1] + digital[index2];
        }
        return miWen;
    }

    public static String finalMD5(String txt) throws Exception {
        return initMD5(initMD5(initMD5(txt) + "dingpeng" + txt) + "dingpeng" + txt);
    }

    public static void main(String[] args) throws Exception {
        String miWen = MD5.finalMD5("123456");
        System.out.println(miWen);
    }

}
