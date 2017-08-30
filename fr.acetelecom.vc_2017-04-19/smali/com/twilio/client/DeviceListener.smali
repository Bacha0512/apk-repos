.class public interface abstract Lcom/twilio/client/DeviceListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onPresenceChanged(Lcom/twilio/client/Device;Lcom/twilio/client/PresenceEvent;)V
.end method

.method public abstract onStartListening(Lcom/twilio/client/Device;)V
.end method

.method public abstract onStopListening(Lcom/twilio/client/Device;)V
.end method

.method public abstract onStopListening(Lcom/twilio/client/Device;ILjava/lang/String;)V
.end method

.method public abstract receivePresenceEvents(Lcom/twilio/client/Device;)Z
.end method
