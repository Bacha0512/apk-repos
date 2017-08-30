.class Lcom/rami_bar/fun_call/activities/ActivityDialer$1;
.super Ljava/lang/Object;
.source "ActivityDialer.java"

# interfaces
.implements Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/ActivityDialer;->setDataToViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/ActivityDialer;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/ActivityDialer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/ActivityDialer;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer$1;->this$0:Lcom/rami_bar/fun_call/activities/ActivityDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallConnected()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer$1;->this$0:Lcom/rami_bar/fun_call/activities/ActivityDialer;

    new-instance v1, Lcom/rami_bar/fun_call/activities/ActivityDialer$1$2;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer$1$2;-><init>(Lcom/rami_bar/fun_call/activities/ActivityDialer$1;)V

    invoke-virtual {v0, v1}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 292
    return-void
.end method

.method public onCallDisconnected()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer$1;->this$0:Lcom/rami_bar/fun_call/activities/ActivityDialer;

    new-instance v1, Lcom/rami_bar/fun_call/activities/ActivityDialer$1$3;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer$1$3;-><init>(Lcom/rami_bar/fun_call/activities/ActivityDialer$1;)V

    invoke-virtual {v0, v1}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 302
    return-void
.end method

.method public onCallNotConnected()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer$1;->this$0:Lcom/rami_bar/fun_call/activities/ActivityDialer;

    new-instance v1, Lcom/rami_bar/fun_call/activities/ActivityDialer$1$1;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer$1$1;-><init>(Lcom/rami_bar/fun_call/activities/ActivityDialer$1;)V

    invoke-virtual {v0, v1}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method
