.class Lcom/weirdvoice/ui/calllog/CallLogListFragment$5;
.super Ljava/lang/Object;
.source "CallLogListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/calllog/CallLogListFragment;->deleteAllCalls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/calllog/CallLogListFragment$5$DelcallsTask;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/calllog/CallLogListFragment;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/calllog/CallLogListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/calllog/CallLogListFragment$5;->this$0:Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/ui/calllog/CallLogListFragment$5;)Lcom/weirdvoice/ui/calllog/CallLogListFragment;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/weirdvoice/ui/calllog/CallLogListFragment$5;->this$0:Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 245
    iget-object v0, p0, Lcom/weirdvoice/ui/calllog/CallLogListFragment$5;->this$0:Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/calllog/CallLogListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/api/SipManager;->CALLLOG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 246
    new-instance v0, Lcom/weirdvoice/ui/calllog/CallLogListFragment$5$DelcallsTask;

    invoke-direct {v0, p0}, Lcom/weirdvoice/ui/calllog/CallLogListFragment$5$DelcallsTask;-><init>(Lcom/weirdvoice/ui/calllog/CallLogListFragment$5;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/calllog/CallLogListFragment$5$DelcallsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 247
    return-void
.end method
