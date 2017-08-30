.class Lcom/weirdvoice/ui/SipHome$1;
.super Ljava/lang/Thread;
.source "SipHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/SipHome;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/SipHome;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/SipHome;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/SipHome$1;->this$0:Lcom/weirdvoice/ui/SipHome;

    .line 238
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/weirdvoice/ui/SipHome$1;->this$0:Lcom/weirdvoice/ui/SipHome;

    # invokes: Lcom/weirdvoice/ui/SipHome;->asyncSanityCheck()V
    invoke-static {v0}, Lcom/weirdvoice/ui/SipHome;->access$7(Lcom/weirdvoice/ui/SipHome;)V

    .line 241
    return-void
.end method
