.class Lcom/weirdvoice/ui/Myaccount$3;
.super Ljava/lang/Object;
.source "Myaccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/Myaccount;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/Myaccount;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/Myaccount;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/Myaccount$3;->this$0:Lcom/weirdvoice/ui/Myaccount;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/weirdvoice/ui/Myaccount$3;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # invokes: Lcom/weirdvoice/ui/Myaccount;->deleteAllCalls()V
    invoke-static {v0}, Lcom/weirdvoice/ui/Myaccount;->access$18(Lcom/weirdvoice/ui/Myaccount;)V

    .line 122
    return-void
.end method
