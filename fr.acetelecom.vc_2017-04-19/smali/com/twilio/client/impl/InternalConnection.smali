.class public interface abstract Lcom/twilio/client/impl/InternalConnection;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twilio/client/Connection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/InternalConnection$InternalState;
    }
.end annotation


# virtual methods
.method public abstract connect()V
.end method

.method public abstract getCallHandle()Ljava/lang/Object;
.end method

.method public abstract getDevice()Lcom/twilio/client/impl/DeviceImpl;
.end method

.method public abstract getIncomingCallSid()Ljava/lang/String;
.end method

.method public abstract getInternalState()Lcom/twilio/client/impl/InternalConnection$InternalState;
.end method

.method public abstract getToken()Ljava/lang/String;
.end method

.method public abstract getUUID()Ljava/util/UUID;
.end method

.method public abstract handleStateCalling()V
.end method

.method public abstract handleStateConfirmed()V
.end method

.method public abstract handleStateConnecting()V
.end method

.method public abstract handleStateDisconnected(ILjava/lang/String;)V
.end method

.method public abstract handleStateEarly()V
.end method

.method public abstract handleStateIncoming()V
.end method

.method public abstract initIncomingConnection(Ljava/util/Map;Lcom/twilio/client/impl/DeviceImpl;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/twilio/client/impl/DeviceImpl;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract initOutgoingConnection(Ljava/util/Map;Lcom/twilio/client/impl/DeviceImpl;Ljava/lang/String;Lcom/twilio/client/ConnectionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/twilio/client/impl/DeviceImpl;",
            "Ljava/lang/String;",
            "Lcom/twilio/client/ConnectionListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract play(Ljava/lang/String;Z)Lcom/twilio/client/impl/useragent/Player;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method public abstract publishDisconnectedConnectionEvent(Lcom/twilio/client/impl/InternalConnection$InternalState;)V
.end method

.method public abstract record(Ljava/lang/String;IZZ)Lcom/twilio/client/impl/useragent/Recorder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method public abstract record(ZZ)Lcom/twilio/client/impl/useragent/Recorder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setCallHandle(Ljava/lang/Object;)V
.end method

.method public abstract setIncomingCallSoundId(I)V
.end method

.method public abstract setOutgoingCallSid(Ljava/lang/String;)V
.end method
