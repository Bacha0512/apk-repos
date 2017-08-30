.class Lcom/weirdvoice/ui/calllog/CallLogListFragment$3;
.super Ljava/lang/Thread;
.source "CallLogListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/calllog/CallLogListFragment;->onVisibilityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/calllog/CallLogListFragment;

.field private final synthetic val$checkedPos:I


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/calllog/CallLogListFragment;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/calllog/CallLogListFragment$3;->this$0:Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    iput p2, p0, Lcom/weirdvoice/ui/calllog/CallLogListFragment$3;->val$checkedPos:I

    .line 199
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/ui/calllog/CallLogListFragment$3;)Lcom/weirdvoice/ui/calllog/CallLogListFragment;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/weirdvoice/ui/calllog/CallLogListFragment$3;->this$0:Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 201
    iget-object v1, p0, Lcom/weirdvoice/ui/calllog/CallLogListFragment$3;->this$0:Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    # getter for: Lcom/weirdvoice/ui/calllog/CallLogListFragment;->mAdapter:Lcom/weirdvoice/ui/calllog/CallLogAdapter;
    invoke-static {v1}, Lcom/weirdvoice/ui/calllog/CallLogListFragment;->access$7(Lcom/weirdvoice/ui/calllog/CallLogListFragment;)Lcom/weirdvoice/ui/calllog/CallLogAdapter;

    move-result-object v1

    iget v2, p0, Lcom/weirdvoice/ui/calllog/CallLogListFragment$3;->val$checkedPos:I

    invoke-virtual {v1, v2}, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->getCallIdsAtPosition(I)[J

    move-result-object v0

    .line 202
    .local v0, "selectedIds":[J
    iget-object v1, p0, Lcom/weirdvoice/ui/calllog/CallLogListFragment$3;->this$0:Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    invoke-virtual {v1}, Lcom/weirdvoice/ui/calllog/CallLogListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/weirdvoice/ui/calllog/CallLogListFragment$3$1;

    iget v3, p0, Lcom/weirdvoice/ui/calllog/CallLogListFragment$3;->val$checkedPos:I

    invoke-direct {v2, p0, v3, v0}, Lcom/weirdvoice/ui/calllog/CallLogListFragment$3$1;-><init>(Lcom/weirdvoice/ui/calllog/CallLogListFragment$3;I[J)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method
