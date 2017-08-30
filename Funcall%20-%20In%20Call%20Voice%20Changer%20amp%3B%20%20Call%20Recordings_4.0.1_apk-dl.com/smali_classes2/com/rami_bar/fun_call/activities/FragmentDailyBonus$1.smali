.class Lcom/rami_bar/fun_call/activities/FragmentDailyBonus$1;
.super Ljava/lang/Object;
.source "FragmentDailyBonus.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->handleCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus$1;->this$0:Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus$1;->this$0:Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->getDailyBonus()V
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->access$000(Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;)V

    .line 68
    return-void
.end method
