.class public abstract Lcom/twilio/client/Twilio;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/Twilio$InitListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDevice(Ljava/lang/String;Lcom/twilio/client/DeviceListener;)Lcom/twilio/client/Device;
    .locals 1

    invoke-static {}, Lcom/twilio/client/impl/TwilioImpl;->getInstance()Lcom/twilio/client/impl/TwilioImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/twilio/client/impl/TwilioImpl;->createDevice(Ljava/lang/String;Lcom/twilio/client/DeviceListener;)Lcom/twilio/client/Device;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/twilio/client/impl/TwilioImpl;->getInstance()Lcom/twilio/client/impl/TwilioImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/TwilioImpl;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Lcom/twilio/client/Twilio$InitListener;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/twilio/client/impl/TwilioImpl;->getInstance()Lcom/twilio/client/impl/TwilioImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/twilio/client/impl/TwilioImpl;->initialize(Landroid/content/Context;Lcom/twilio/client/Twilio$InitListener;)V

    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    invoke-static {}, Lcom/twilio/client/impl/TwilioImpl;->getInstance()Lcom/twilio/client/impl/TwilioImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/TwilioImpl;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public static listDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twilio/client/Device;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/twilio/client/impl/TwilioImpl;->getInstance()Lcom/twilio/client/impl/TwilioImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/TwilioImpl;->listDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setLogLevel(I)V
    .locals 1

    invoke-static {}, Lcom/twilio/client/impl/TwilioImpl;->getInstance()Lcom/twilio/client/impl/TwilioImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twilio/client/impl/TwilioImpl;->setLogLevel(I)V

    return-void
.end method

.method public static setMetrics(Z)V
    .locals 1

    invoke-static {}, Lcom/twilio/client/impl/TwilioImpl;->getInstance()Lcom/twilio/client/impl/TwilioImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twilio/client/impl/TwilioImpl;->setMetrics(Z)V

    return-void
.end method

.method public static shutdown()V
    .locals 1

    invoke-static {}, Lcom/twilio/client/impl/TwilioImpl;->getInstance()Lcom/twilio/client/impl/TwilioImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/TwilioImpl;->shutdown()V

    return-void
.end method
