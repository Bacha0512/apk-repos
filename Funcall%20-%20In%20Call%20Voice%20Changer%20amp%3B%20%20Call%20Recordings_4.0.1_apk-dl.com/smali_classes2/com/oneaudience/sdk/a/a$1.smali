.class final Lcom/oneaudience/sdk/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oneaudience/sdk/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneaudience/sdk/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "B76D0E90467ECC6FC2E609149E1C83F53E1CC1B9FE43FD9A2B3938DAF9AED2E878C2B67E3AFC84E5E650C1B18B544ADE0A3BDEC87FAD1028774330191C0D675578B89D264E63E4E1819952962D33C47CEB154E24161980C8F75AF7755EDC387A1F96CD1222D9880B08D48BADCAC6FD20B60875820619AE4FA767B64FD63D7FBE916417ADCAFAABA925BAEC0DE0B52EA8C7178985AEEFE0F3B26D554131C513EAD5DD389C07E58E4D7C6120360C1F5542BF9F944094CE84A1D53613F91C0B97E18B28B12197FEE941C9E58791CF443DCA05605807E87D787D4A6361BFD1DF8CE2C51F5CB1832276CECEEAA0ED689525F60C55AF07438738EF94E925357D1D5C8D"

    iput-object v0, p0, Lcom/oneaudience/sdk/a/a$1;->a:Ljava/lang/String;

    const-string v0, "010001"

    iput-object v0, p0, Lcom/oneaudience/sdk/a/a$1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/security/interfaces/RSAPublicKey;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "B76D0E90467ECC6FC2E609149E1C83F53E1CC1B9FE43FD9A2B3938DAF9AED2E878C2B67E3AFC84E5E650C1B18B544ADE0A3BDEC87FAD1028774330191C0D675578B89D264E63E4E1819952962D33C47CEB154E24161980C8F75AF7755EDC387A1F96CD1222D9880B08D48BADCAC6FD20B60875820619AE4FA767B64FD63D7FBE916417ADCAFAABA925BAEC0DE0B52EA8C7178985AEEFE0F3B26D554131C513EAD5DD389C07E58E4D7C6120360C1F5542BF9F944094CE84A1D53613F91C0B97E18B28B12197FEE941C9E58791CF443DCA05605807E87D787D4A6361BFD1DF8CE2C51F5CB1832276CECEEAA0ED689525F60C55AF07438738EF94E925357D1D5C8D"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "010001"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v3, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v3, v0, v1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_1
.end method
