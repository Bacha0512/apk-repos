.class public interface abstract Lcom/twilio/client/impl/CallFactory;
.super Ljava/lang/Object;


# virtual methods
.method public abstract newCall(Lcom/twilio/client/impl/session/Account;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;)Lcom/twilio/client/impl/useragent/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twilio/client/impl/session/Account;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/twilio/client/impl/useragent/Call;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method public abstract newCall(Lcom/twilio/client/impl/session/Account;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;I)Lcom/twilio/client/impl/useragent/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twilio/client/impl/session/Account;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/twilio/client/impl/useragent/Call;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method
