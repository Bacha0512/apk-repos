.class Lcom/mexuar/corraleta/protocol/Call$1;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mexuar/corraleta/protocol/Call;->startRcv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mexuar/corraleta/protocol/Call;


# direct methods
.method constructor <init>(Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mexuar/corraleta/protocol/Call$1;->this$0:Lcom/mexuar/corraleta/protocol/Call;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    :goto_0
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call$1;->this$0:Lcom/mexuar/corraleta/protocol/Call;

    # getter for: Lcom/mexuar/corraleta/protocol/Call;->_done:Z
    invoke-static {v0}, Lcom/mexuar/corraleta/protocol/Call;->access$0(Lcom/mexuar/corraleta/protocol/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call$1;->this$0:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/Call;->resendUnacked()V

    .line 202
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    goto :goto_0
.end method
