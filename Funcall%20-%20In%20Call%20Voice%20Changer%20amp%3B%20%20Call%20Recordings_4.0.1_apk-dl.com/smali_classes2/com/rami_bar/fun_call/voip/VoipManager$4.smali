.class Lcom/rami_bar/fun_call/voip/VoipManager$4;
.super Ljava/lang/Object;
.source "VoipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/voip/VoipManager;->addCallStatusListener(Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/voip/VoipManager;

.field final synthetic val$onCallStatusListener:Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/voip/VoipManager;Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/voip/VoipManager;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/rami_bar/fun_call/voip/VoipManager$4;->this$0:Lcom/rami_bar/fun_call/voip/VoipManager;

    iput-object p2, p0, Lcom/rami_bar/fun_call/voip/VoipManager$4;->val$onCallStatusListener:Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 289
    :goto_0
    iget-object v2, p0, Lcom/rami_bar/fun_call/voip/VoipManager$4;->this$0:Lcom/rami_bar/fun_call/voip/VoipManager;

    # getter for: Lcom/rami_bar/fun_call/voip/VoipManager;->isInCall:Z
    invoke-static {v2}, Lcom/rami_bar/fun_call/voip/VoipManager;->access$500(Lcom/rami_bar/fun_call/voip/VoipManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 290
    sget-object v2, Lcom/rami_bar/fun_call/voip/IAX2Service;->call:Lcom/mexuar/corraleta/protocol/Call;

    if-eqz v2, :cond_1

    .line 291
    sget-object v2, Lcom/rami_bar/fun_call/voip/IAX2Service;->call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v2}, Lcom/mexuar/corraleta/protocol/Call;->getStatus()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "status":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "connected"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/rami_bar/fun_call/voip/VoipManager$4;->val$onCallStatusListener:Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;

    invoke-interface {v2}, Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;->onCallConnected()V

    .line 301
    .end local v1    # "status":Ljava/lang/String;
    :goto_1
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 295
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "status":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/rami_bar/fun_call/voip/VoipManager$4;->val$onCallStatusListener:Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;

    invoke-interface {v2}, Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;->onCallNotConnected()V

    goto :goto_1

    .line 298
    .end local v1    # "status":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/rami_bar/fun_call/voip/VoipManager$4;->val$onCallStatusListener:Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;

    invoke-interface {v2}, Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;->onCallDisconnected()V

    goto :goto_1

    .line 306
    :cond_2
    return-void
.end method
