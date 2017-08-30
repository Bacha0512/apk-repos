.class Lcom/rami_bar/fun_call/activities/FragmentSms$1;
.super Ljava/lang/Object;
.source "FragmentSms.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentSms;->handleCallbacks()V
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
    .line 83
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$1;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$1;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    invoke-virtual {v0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->onSendSMS()V

    .line 87
    return-void
.end method
