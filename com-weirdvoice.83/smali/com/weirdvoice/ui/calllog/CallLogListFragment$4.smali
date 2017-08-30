.class Lcom/weirdvoice/ui/calllog/CallLogListFragment$4;
.super Ljava/lang/Object;
.source "CallLogListFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/calllog/CallLogListFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/calllog/CallLogListFragment;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/calllog/CallLogListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/calllog/CallLogListFragment$4;->this$0:Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/weirdvoice/ui/calllog/CallLogListFragment$4;->this$0:Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    # invokes: Lcom/weirdvoice/ui/calllog/CallLogListFragment;->deleteAllCalls()V
    invoke-static {v0}, Lcom/weirdvoice/ui/calllog/CallLogListFragment;->access$8(Lcom/weirdvoice/ui/calllog/CallLogListFragment;)V

    .line 233
    const/4 v0, 0x1

    return v0
.end method
