.class public Lorg/abtollc/utils/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v2, 0x0

    .line 70
    .local v2, "m":Ljava/security/MessageDigest;
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 77
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    :goto_0
    return-object v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 73
    const-string v1, ""

    goto :goto_0
.end method

.method public static calculateMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .param p0, "updateFile"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 29
    const/4 v2, 0x0

    .line 31
    .local v2, "digest":Ljava/security/MessageDigest;
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 35
    const/4 v4, 0x0

    .line 37
    .local v4, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    .end local v4    # "is":Ljava/io/InputStream;
    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 41
    .restart local v4    # "is":Ljava/io/InputStream;
    const/16 v8, 0x2000

    new-array v1, v8, [B

    .line 42
    .local v1, "buffer":[B
    const/4 v7, 0x0

    .line 44
    .local v7, "read":I
    :goto_0
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_0

    .line 45
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v8, v7}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v3

    .line 54
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Unable to process file for MD5"

    invoke-direct {v8, v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 57
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 59
    throw v8

    .line 32
    .end local v1    # "buffer":[B
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v7    # "read":I
    :catch_1
    move-exception v3

    .line 59
    :goto_1
    return-object v6

    .line 38
    :catch_2
    move-exception v3

    .line 39
    .local v3, "e":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 47
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "buffer":[B
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v7    # "read":I
    :cond_0
    :try_start_5
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 48
    .local v5, "md5sum":[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-direct {v0, v8, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 49
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, "output":Ljava/lang/String;
    const-string v8, "%32s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    const/16 v10, 0x30

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v6

    .line 57
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 58
    :catch_3
    move-exception v3

    .line 59
    .local v3, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Unable to close input stream for MD5 calculation"

    invoke-direct {v8, v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 58
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "md5sum":[B
    .end local v6    # "output":Ljava/lang/String;
    :catch_4
    move-exception v3

    .line 59
    .restart local v3    # "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Unable to close input stream for MD5 calculation"

    invoke-direct {v8, v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public static checkMD5(Ljava/lang/String;Ljava/io/File;)Z
    .locals 3
    .param p0, "md5"    # Ljava/lang/String;
    .param p1, "updateFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 16
    if-eqz p0, :cond_0

    const-string v2, ""

    if-eq p0, v2, :cond_0

    if-nez p1, :cond_1

    .line 25
    :cond_0
    :goto_0
    return v1

    .line 20
    :cond_1
    invoke-static {p1}, Lorg/abtollc/utils/MD5;->calculateMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "calculatedDigest":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
