.class public Lcom/twilio/client/impl/AcceptCallCommand;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final logger:Lcom/twilio/client/impl/logging/Logger;


# instance fields
.field final connection:Lcom/twilio/client/impl/InternalConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/twilio/client/impl/AcceptCallCommand;

    invoke-static {v0}, Lcom/twilio/client/impl/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/twilio/client/impl/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/AcceptCallCommand;->logger:Lcom/twilio/client/impl/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/twilio/client/impl/InternalConnection;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection must be non-null when answering call"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/twilio/client/impl/AcceptCallCommand;->connection:Lcom/twilio/client/impl/InternalConnection;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/AcceptCallCommand;->connection:Lcom/twilio/client/impl/InternalConnection;

    invoke-interface {v0}, Lcom/twilio/client/impl/InternalConnection;->getCallHandle()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/useragent/Call;

    iget-object v1, p0, Lcom/twilio/client/impl/AcceptCallCommand;->connection:Lcom/twilio/client/impl/InternalConnection;

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/useragent/Call;->setUserData(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twilio/client/impl/useragent/Call;->answer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/twilio/client/impl/AcceptCallCommand;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v2, "Failed to answer call"

    invoke-virtual {v1, v2, v0}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
