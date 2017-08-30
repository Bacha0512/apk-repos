.class Lcom/weirdvoice/ui/calllog/CallLogAdapter$1;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/calllog/CallLogAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/calllog/CallLogAdapter$1;->this$0:Lcom/weirdvoice/ui/calllog/CallLogAdapter;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallRowInfos;

    .line 88
    .local v0, "cri":Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallRowInfos;
    iget-object v1, p0, Lcom/weirdvoice/ui/calllog/CallLogAdapter$1;->this$0:Lcom/weirdvoice/ui/calllog/CallLogAdapter;

    # getter for: Lcom/weirdvoice/ui/calllog/CallLogAdapter;->callLogActionListener:Lcom/weirdvoice/ui/calllog/CallLogAdapter$OnCallLogAction;
    invoke-static {v1}, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->access$0(Lcom/weirdvoice/ui/calllog/CallLogAdapter;)Lcom/weirdvoice/ui/calllog/CallLogAdapter$OnCallLogAction;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/weirdvoice/ui/calllog/CallLogAdapter$1;->this$0:Lcom/weirdvoice/ui/calllog/CallLogAdapter;

    # getter for: Lcom/weirdvoice/ui/calllog/CallLogAdapter;->callLogActionListener:Lcom/weirdvoice/ui/calllog/CallLogAdapter$OnCallLogAction;
    invoke-static {v1}, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->access$0(Lcom/weirdvoice/ui/calllog/CallLogAdapter;)Lcom/weirdvoice/ui/calllog/CallLogAdapter$OnCallLogAction;

    move-result-object v1

    iget v2, v0, Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallRowInfos;->position:I

    iget-object v3, v0, Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallRowInfos;->callIds:[J

    invoke-interface {v1, v2, v3}, Lcom/weirdvoice/ui/calllog/CallLogAdapter$OnCallLogAction;->viewDetails(I[J)V

    .line 91
    :cond_0
    return-void
.end method
