.class final Lcom/oneaudience/sdk/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneaudience/sdk/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final c:Lcom/oneaudience/sdk/a/a;


# instance fields
.field private b:Ljava/security/interfaces/RSAPublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/oneaudience/sdk/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneaudience/sdk/a/a;->a:Ljava/lang/String;

    new-instance v0, Lcom/oneaudience/sdk/a/a;

    new-instance v1, Lcom/oneaudience/sdk/a/a$1;

    invoke-direct {v1}, Lcom/oneaudience/sdk/a/a$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/oneaudience/sdk/a/a;-><init>(Lcom/oneaudience/sdk/a/a$a;)V

    sput-object v0, Lcom/oneaudience/sdk/a/a;->c:Lcom/oneaudience/sdk/a/a;

    return-void
.end method

.method private constructor <init>(Lcom/oneaudience/sdk/a/a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/oneaudience/sdk/a/a$a;->a()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/oneaudience/sdk/a/a;->b:Ljava/security/interfaces/RSAPublicKey;

    return-void
.end method

.method public static a()Lcom/oneaudience/sdk/a/a;
    .locals 1

    sget-object v0, Lcom/oneaudience/sdk/a/a;->c:Lcom/oneaudience/sdk/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/oneaudience/sdk/a/a;->b:Ljava/security/interfaces/RSAPublicKey;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "RSA/ECB/OAEPWithSHA1AndMGF1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/oneaudience/sdk/a/a;->b:Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/oneaudience/sdk/a/a;->a:Ljava/lang/String;

    const-string v3, "unable to create cipher."

    invoke-static {v2, v3, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Lcom/oneaudience/sdk/a/a;->a:Ljava/lang/String;

    const-string v3, "unable to create cipher."

    invoke-static {v2, v3, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    sget-object v2, Lcom/oneaudience/sdk/a/a;->a:Ljava/lang/String;

    const-string v3, "unable to initialize cipher."

    invoke-static {v2, v3, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v1

    sget-object v2, Lcom/oneaudience/sdk/a/a;->a:Ljava/lang/String;

    const-string v3, "unable to cipher input text."

    invoke-static {v2, v3, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_4
    move-exception v1

    sget-object v2, Lcom/oneaudience/sdk/a/a;->a:Ljava/lang/String;

    const-string v3, "unable to cipher input text."

    invoke-static {v2, v3, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
