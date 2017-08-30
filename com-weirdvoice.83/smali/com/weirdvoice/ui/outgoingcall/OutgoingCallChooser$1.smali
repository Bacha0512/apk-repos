.class Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser$1;
.super Ljava/lang/Object;
.source "OutgoingCallChooser.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser$1;->this$0:Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser$1;->this$0:Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;

    invoke-static {p2}, Lcom/weirdvoice/api/ISipService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/weirdvoice/api/ISipService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->access$5(Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;Lcom/weirdvoice/api/ISipService;)V

    .line 184
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser$1;->this$0:Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->access$5(Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;Lcom/weirdvoice/api/ISipService;)V

    .line 189
    return-void
.end method
