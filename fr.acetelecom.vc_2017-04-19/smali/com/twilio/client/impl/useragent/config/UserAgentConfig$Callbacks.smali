.class public interface abstract Lcom/twilio/client/impl/useragent/config/UserAgentConfig$Callbacks;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/useragent/config/UserAgentConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onCallMediaState(Lcom/twilio/client/impl/useragent/Call;)V
.end method

.method public abstract onCallSDPCreated(Lcom/twilio/client/impl/useragent/Call;Ljava/lang/String;)V
.end method

.method public abstract onCallState(Lcom/twilio/client/impl/useragent/Call;Lcom/twilio/client/impl/session/Event;)V
.end method

.method public abstract onIncomingCall(Lcom/twilio/client/impl/session/Account;Lcom/twilio/client/impl/useragent/Call;Lcom/twilio/client/impl/session/events/RxMessageEvent$RxData;)V
.end method

.method public abstract onRegistrationState(Lcom/twilio/client/impl/session/Account;Lcom/twilio/client/impl/session/Account$RegistrationInfo;)V
.end method

.method public abstract onTransactionState(Lcom/twilio/client/impl/useragent/Call;Ljava/lang/String;)V
.end method

.method public abstract onTransportState(Lcom/twilio/client/impl/session/Transport;Lcom/twilio/client/impl/session/Transport$State;Lcom/twilio/client/impl/session/Transport$StateInfo;)V
.end method
