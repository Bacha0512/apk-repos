.class Lcom/rami_bar/fun_call/activities/ActivityDialer$1$3;
.super Ljava/lang/Object;
.source "ActivityDialer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/ActivityDialer$1;->onCallDisconnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rami_bar/fun_call/activities/ActivityDialer$1;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/ActivityDialer$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/rami_bar/fun_call/activities/ActivityDialer$1;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer$1$3;->this$1:Lcom/rami_bar/fun_call/activities/ActivityDialer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer$1$3;->this$1:Lcom/rami_bar/fun_call/activities/ActivityDialer$1;

    iget-object v0, v0, Lcom/rami_bar/fun_call/activities/ActivityDialer$1;->this$0:Lcom/rami_bar/fun_call/activities/ActivityDialer;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityDialer;->hangup()V
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->access$000(Lcom/rami_bar/fun_call/activities/ActivityDialer;)V

    .line 300
    return-void
.end method
