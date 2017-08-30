.class public abstract Lcom/twilio/client/impl/net/LongPollConnection;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/net/LongPollConnection$Listener;,
        Lcom/twilio/client/impl/net/LongPollConnection$TransferEncoding;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract isConnected()Z
.end method
