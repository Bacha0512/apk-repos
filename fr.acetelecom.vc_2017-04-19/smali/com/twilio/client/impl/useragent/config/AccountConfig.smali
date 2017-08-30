.class public Lcom/twilio/client/impl/useragent/config/AccountConfig;
.super Ljava/lang/Object;


# instance fields
.field private final allowContactRewrite:Z

.field private final credInfo:[Lcom/twilio/client/impl/session/CredentialInfo;

.field private final id:Ljava/lang/String;

.field private final registerHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final registerOnAccountAdd:Z

.field private final registerRefreshMargin:I

.field private final registerRetryInterval:I

.field private final registerTimeout:I

.field private final registerUri:Ljava/lang/String;

.field private final rtpTransportConfig:Lcom/twilio/client/impl/useragent/config/TransportConfig;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ZLcom/twilio/client/impl/useragent/config/TransportConfig;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/twilio/client/impl/session/CredentialInfo;",
            ">;Z",
            "Lcom/twilio/client/impl/useragent/config/TransportConfig;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, v5

    move v8, v7

    move v9, v7

    move v10, v7

    invoke-direct/range {v0 .. v10}, Lcom/twilio/client/impl/useragent/config/AccountConfig;-><init>(Ljava/lang/String;Ljava/util/List;ZLcom/twilio/client/impl/useragent/config/TransportConfig;Ljava/lang/String;Ljava/util/Map;IIIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ZLcom/twilio/client/impl/useragent/config/TransportConfig;Ljava/lang/String;Ljava/util/Map;IIIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/twilio/client/impl/session/CredentialInfo;",
            ">;Z",
            "Lcom/twilio/client/impl/useragent/config/TransportConfig;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IIIZ)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twilio/client/impl/useragent/config/AccountConfig;->id:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/twilio/client/impl/useragent/config/AccountConfig;->allowContactRewrite:Z

    iput-object p4, p0, Lcom/twilio/client/impl/useragent/config/AccountConfig;->rtpTransportConfig:Lcom/twilio/client/impl/useragent/config/TransportConfig;

    iput-object p5, p0, Lcom/twilio/client/impl/useragent/config/AccountConfig;->registerUri:Ljava/lang/String;

    iput-object p6, p0, Lcom/twilio/client/impl/useragent/config/AccountConfig;->registerHeaders:Ljava/util/Map;

    iput p7, p0, Lcom/twilio/client/impl/useragent/config/AccountConfig;->registerTimeout:I

    iput p8, p0, Lcom/twilio/client/impl/useragent/config/AccountConfig;->registerRefreshMargin:I

    iput p9, p0, Lcom/twilio/client/impl/useragent/config/AccountConfig;->registerRetryInterval:I

    iput-boolean p10, p0, Lcom/twilio/client/impl/useragent/config/AccountConfig;->registerOnAccountAdd:Z

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    new-array v0, v0, [Lcom/twilio/client/impl/session/CredentialInfo;

    iput-object v0, p0, Lcom/twilio/client/impl/useragent/config/AccountConfig;->credInfo:[Lcom/twilio/client/impl/session/CredentialInfo;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/twilio/client/impl/useragent/config/AccountConfig;->credInfo:[Lcom/twilio/client/impl/session/CredentialInfo;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/session/CredentialInfo;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public allowContactRewrite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twilio/client/impl/useragent/config/AccountConfig;->allowContactRewrite:Z

    return v0
.end method

.method public getCredInfo()[Lcom/twilio/client/impl/session/CredentialInfo;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/useragent/config/AccountConfig;->credInfo:[Lcom/twilio/client/impl/session/CredentialInfo;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/useragent/config/AccountConfig;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/twilio/client/impl/useragent/config/AccountConfig;->registerHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getRegisterRefreshMargin()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/useragent/config/AccountConfig;->registerRefreshMargin:I

    return v0
.end method

.method public getRegisterRetryInterval()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/useragent/config/AccountConfig;->registerRetryInterval:I

    return v0
.end method

.method public getRegisterTimeout()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/useragent/config/AccountConfig;->registerTimeout:I

    return v0
.end method

.method public getRegisterUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/useragent/config/AccountConfig;->registerUri:Ljava/lang/String;

    return-object v0
.end method

.method public getRtpTransportConfig()Lcom/twilio/client/impl/useragent/config/TransportConfig;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/useragent/config/AccountConfig;->rtpTransportConfig:Lcom/twilio/client/impl/useragent/config/TransportConfig;

    return-object v0
.end method

.method public isAllowContactRewrite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twilio/client/impl/useragent/config/AccountConfig;->allowContactRewrite:Z

    return v0
.end method

.method public registerOnAccountAdd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twilio/client/impl/useragent/config/AccountConfig;->registerOnAccountAdd:Z

    return v0
.end method
