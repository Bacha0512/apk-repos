.class Lcom/rami_bar/fun_call/activities/FragmentInfo$1;
.super Ljava/lang/Object;
.source "FragmentInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentInfo;->handleCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/FragmentInfo;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/FragmentInfo;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentInfo$1;->this$0:Lcom/rami_bar/fun_call/activities/FragmentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentInfo$1;->this$0:Lcom/rami_bar/fun_call/activities/FragmentInfo;

    invoke-virtual {v0}, Lcom/rami_bar/fun_call/activities/FragmentInfo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentInfo$1;->this$0:Lcom/rami_bar/fun_call/activities/FragmentInfo;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentInfo;->mSuggestion:Lcom/rami_bar/fun_call/objects/receive/Suggestion;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/FragmentInfo;->access$000(Lcom/rami_bar/fun_call/activities/FragmentInfo;)Lcom/rami_bar/fun_call/objects/receive/Suggestion;

    move-result-object v1

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/receive/Suggestion;->action_data:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/rami_bar/fun_call/utiles/Functions;->openURL(Landroid/app/Activity;Ljava/lang/String;)V

    .line 42
    return-void
.end method
