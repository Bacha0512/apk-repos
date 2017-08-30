.class public Lcom/twilio/client/impl/session/CredentialInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/session/CredentialInfo$DataType;
    }
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field private dataType:Lcom/twilio/client/impl/session/CredentialInfo$DataType;

.field private realm:Ljava/lang/String;

.field private scheme:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twilio/client/impl/session/CredentialInfo$DataType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twilio/client/impl/session/CredentialInfo;->realm:Ljava/lang/String;

    iput-object p2, p0, Lcom/twilio/client/impl/session/CredentialInfo;->scheme:Ljava/lang/String;

    iput-object p3, p0, Lcom/twilio/client/impl/session/CredentialInfo;->username:Ljava/lang/String;

    iput-object p4, p0, Lcom/twilio/client/impl/session/CredentialInfo;->dataType:Lcom/twilio/client/impl/session/CredentialInfo$DataType;

    iput-object p5, p0, Lcom/twilio/client/impl/session/CredentialInfo;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/session/CredentialInfo;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDataType()Lcom/twilio/client/impl/session/CredentialInfo$DataType;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/session/CredentialInfo;->dataType:Lcom/twilio/client/impl/session/CredentialInfo$DataType;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/session/CredentialInfo;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/session/CredentialInfo;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/session/CredentialInfo;->username:Ljava/lang/String;

    return-object v0
.end method
