.class public Lcom/twilio/client/impl/useragent/config/UserAgentConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/useragent/config/UserAgentConfig$Callbacks;
    }
.end annotation


# instance fields
.field private callbacks:Lcom/twilio/client/impl/useragent/config/UserAgentConfig$Callbacks;

.field private sessExpires:I

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/twilio/client/impl/useragent/config/UserAgentConfig$Callbacks;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/twilio/client/impl/useragent/config/UserAgentConfig;-><init>(Lcom/twilio/client/impl/useragent/config/UserAgentConfig$Callbacks;I)V

    return-void
.end method

.method public constructor <init>(Lcom/twilio/client/impl/useragent/config/UserAgentConfig$Callbacks;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twilio/client/impl/useragent/config/UserAgentConfig;-><init>(Lcom/twilio/client/impl/useragent/config/UserAgentConfig$Callbacks;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/twilio/client/impl/useragent/config/UserAgentConfig$Callbacks;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3840

    iput v0, p0, Lcom/twilio/client/impl/useragent/config/UserAgentConfig;->sessExpires:I

    iput-object p1, p0, Lcom/twilio/client/impl/useragent/config/UserAgentConfig;->callbacks:Lcom/twilio/client/impl/useragent/config/UserAgentConfig$Callbacks;

    if-lez p2, :cond_0

    iput p2, p0, Lcom/twilio/client/impl/useragent/config/UserAgentConfig;->sessExpires:I

    :cond_0
    iput-object p3, p0, Lcom/twilio/client/impl/useragent/config/UserAgentConfig;->userAgent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCallbacks()Lcom/twilio/client/impl/useragent/config/UserAgentConfig$Callbacks;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/useragent/config/UserAgentConfig;->callbacks:Lcom/twilio/client/impl/useragent/config/UserAgentConfig$Callbacks;

    return-object v0
.end method

.method public getSessExpires()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/useragent/config/UserAgentConfig;->sessExpires:I

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/useragent/config/UserAgentConfig;->userAgent:Ljava/lang/String;

    return-object v0
.end method
