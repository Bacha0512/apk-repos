.class public abstract Lcom/twilio/client/Device;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/Device$State;,
        Lcom/twilio/client/Device$Capability;
    }
.end annotation


# static fields
.field public static final EXTRA_CONNECTION:Ljava/lang/String; = "com.twilio.client.Connection"

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "com.twilio.client.Device"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract connect(Ljava/util/Map;Lcom/twilio/client/ConnectionListener;)Lcom/twilio/client/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/twilio/client/ConnectionListener;",
            ")",
            "Lcom/twilio/client/Connection;"
        }
    .end annotation
.end method

.method public abstract disconnectAll()V
.end method

.method public abstract getCapabilities()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/twilio/client/Device$Capability;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCapabilityToken()Ljava/lang/String;
.end method

.method public abstract getState()Lcom/twilio/client/Device$State;
.end method

.method public abstract isDisconnectSoundEnabled()Z
.end method

.method public abstract isIncomingSoundEnabled()Z
.end method

.method public abstract isOutgoingSoundEnabled()Z
.end method

.method public abstract listen()V
.end method

.method public abstract release()V
.end method

.method public abstract setDeviceListener(Lcom/twilio/client/DeviceListener;)V
.end method

.method public abstract setDisconnectSoundEnabled(Z)V
.end method

.method public abstract setIncomingIntent(Landroid/app/PendingIntent;)V
.end method

.method public abstract setIncomingSoundEnabled(Z)V
.end method

.method public abstract setOutgoingSoundEnabled(Z)V
.end method

.method public abstract unlisten()V
.end method

.method public abstract updateCapabilityToken(Ljava/lang/String;)V
.end method
