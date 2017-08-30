.class Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$1;
.super Ljava/lang/Object;
.source "CallLogDetailsFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$1;->this$0:Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "arg1"    # Landroid/os/IBinder;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$1;->this$0:Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;

    invoke-static {p2}, Lcom/weirdvoice/api/ISipService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/weirdvoice/api/ISipService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->access$0(Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;Lcom/weirdvoice/api/ISipService;)V

    .line 140
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$1;->this$0:Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->access$0(Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;Lcom/weirdvoice/api/ISipService;)V

    .line 145
    return-void
.end method
