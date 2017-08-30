.class Lcom/weirdvoice/ui/HelpMe$KOListener;
.super Ljava/lang/Object;
.source "HelpMe.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/HelpMe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KOListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/HelpMe;


# direct methods
.method private constructor <init>(Lcom/weirdvoice/ui/HelpMe;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/weirdvoice/ui/HelpMe$KOListener;->this$0:Lcom/weirdvoice/ui/HelpMe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/weirdvoice/ui/HelpMe;Lcom/weirdvoice/ui/HelpMe$KOListener;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/HelpMe$KOListener;-><init>(Lcom/weirdvoice/ui/HelpMe;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/weirdvoice/ui/HelpMe$KOListener;->this$0:Lcom/weirdvoice/ui/HelpMe;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/HelpMe;->dismiss()V

    .line 61
    new-instance v0, Lcom/weirdvoice/ui/HelpMe$PleasehelpTask;

    iget-object v1, p0, Lcom/weirdvoice/ui/HelpMe$KOListener;->this$0:Lcom/weirdvoice/ui/HelpMe;

    invoke-direct {v0, v1}, Lcom/weirdvoice/ui/HelpMe$PleasehelpTask;-><init>(Lcom/weirdvoice/ui/HelpMe;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "n"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/HelpMe$PleasehelpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    return-void
.end method
