.class Lcom/mexuar/corraleta/protocol/FullFrame$1;
.super Lcom/mexuar/corraleta/protocol/FullFrame;
.source "FullFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mexuar/corraleta/protocol/FullFrame;->create(Lcom/mexuar/corraleta/protocol/Call;[B)Lcom/mexuar/corraleta/protocol/FullFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/mexuar/corraleta/protocol/Call;[B)V
    .locals 0
    .param p1, "$anonymous0"    # Lcom/mexuar/corraleta/protocol/Call;
    .param p2, "$anonymous1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/mexuar/corraleta/protocol/FullFrame;-><init>(Lcom/mexuar/corraleta/protocol/Call;[B)V

    .line 1
    return-void
.end method


# virtual methods
.method ack()V
    .locals 1

    .prologue
    .line 200
    const-string v0, "Sending Ack on unimplemented FullFrame Type"

    invoke-static {v0}, Lcom/mexuar/corraleta/protocol/Log;->warn(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/FullFrame$1;->sendAck()V

    .line 202
    return-void
.end method
