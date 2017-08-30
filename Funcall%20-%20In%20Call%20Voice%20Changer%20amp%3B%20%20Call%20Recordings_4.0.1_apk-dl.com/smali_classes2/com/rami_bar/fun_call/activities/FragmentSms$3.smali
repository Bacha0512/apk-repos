.class Lcom/rami_bar/fun_call/activities/FragmentSms$3;
.super Ljava/lang/Object;
.source "FragmentSms.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentSms;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentSms;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/FragmentSms;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 172
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 165
    if-nez p2, :cond_0

    .line 166
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentSms;->lv_contacts:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->access$300(Lcom/rami_bar/fun_call/activities/FragmentSms;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 168
    :cond_0
    return-void
.end method
