.class public Lcom/rami_bar/fun_call/utiles/MCrypt;
.super Ljava/lang/Object;
.source "MCrypt.java"


# instance fields
.field private SecretKey:Ljava/lang/String;

.field private cipher:Ljavax/crypto/Cipher;

.field private iv:Ljava/lang/String;

.field private ivspec:Ljavax/crypto/spec/IvParameterSpec;

.field private keyspec:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v1, "fedcba9876543210"

    iput-object v1, p0, Lcom/rami_bar/fun_call/utiles/MCrypt;->iv:Ljava/lang/String;

    .line 18
    const-string v1, "0123456789abcdef"

    iput-object v1, p0, Lcom/rami_bar/fun_call/utiles/MCrypt;->SecretKey:Ljava/lang/String;

    .line 22
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v2, p0, Lcom/rami_bar/fun_call/utiles/MCrypt;->iv:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v1, p0, Lcom/rami_bar/fun_call/utiles/MCrypt;->ivspec:Ljavax/crypto/spec/IvParameterSpec;

    .line 24
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/rami_bar/fun_call/utiles/MCrypt;->SecretKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/rami_bar/fun_call/utiles/MCrypt;->keyspec:Ljavax/crypto/spec/SecretKeySpec;

    .line 28
    :try_start_0
    const-string v1, "AES/CBC/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/rami_bar/fun_call/utiles/MCrypt;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 32
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 34
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    .line 79
    if-nez p0, :cond_1

    .line 81
    const/4 v2, 0x0

    .line 93
    :cond_0
    return-object v2

    .line 84
    :cond_1
    array-length v1, p0

    .line 85
    .local v1, "len":I
    const-string v2, ""

    .line 86
    .local v2, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 88
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_2

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 98
    if-nez p0, :cond_1

    .line 112
    :cond_0
    return-object v0

    .line 101
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    .line 107
    .local v2, "len":I
    new-array v0, v2, [B

    .line 108
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 110
    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static padString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 118
    const/16 v2, 0x20

    .line 119
    .local v2, "paddingChar":C
    const/16 v3, 0x10

    .line 120
    .local v3, "size":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    rem-int v4, v5, v3

    .line 121
    .local v4, "x":I
    sub-int v1, v3, v4

    .line 123
    .local v1, "padLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-object p0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)[B
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 61
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Empty string"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_1
    const/4 v0, 0x0

    .line 67
    .local v0, "decrypted":[B
    :try_start_0
    iget-object v2, p0, Lcom/rami_bar/fun_call/utiles/MCrypt;->cipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/rami_bar/fun_call/utiles/MCrypt;->keyspec:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v5, p0, Lcom/rami_bar/fun_call/utiles/MCrypt;->ivspec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2, v3, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 69
    iget-object v2, p0, Lcom/rami_bar/fun_call/utiles/MCrypt;->cipher:Ljavax/crypto/Cipher;

    invoke-static {p1}, Lcom/rami_bar/fun_call/utiles/MCrypt;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    return-object v0

    .line 70
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decrypt] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public encrypt(Ljava/lang/String;)[B
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 41
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Empty string"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_1
    const/4 v1, 0x0

    .line 47
    .local v1, "encrypted":[B
    :try_start_0
    iget-object v2, p0, Lcom/rami_bar/fun_call/utiles/MCrypt;->cipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/rami_bar/fun_call/utiles/MCrypt;->keyspec:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v5, p0, Lcom/rami_bar/fun_call/utiles/MCrypt;->ivspec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2, v3, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 49
    iget-object v2, p0, Lcom/rami_bar/fun_call/utiles/MCrypt;->cipher:Ljavax/crypto/Cipher;

    invoke-static {p1}, Lcom/rami_bar/fun_call/utiles/MCrypt;->padString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 55
    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[encrypt] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method
