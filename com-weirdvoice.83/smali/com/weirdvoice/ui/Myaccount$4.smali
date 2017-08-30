.class Lcom/weirdvoice/ui/Myaccount$4;
.super Ljava/lang/Object;
.source "Myaccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/Myaccount;->deleteAllCalls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/Myaccount$4$DelcallsTask;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/Myaccount;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/Myaccount;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/Myaccount$4;->this$0:Lcom/weirdvoice/ui/Myaccount;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/ui/Myaccount$4;)Lcom/weirdvoice/ui/Myaccount;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/weirdvoice/ui/Myaccount$4;->this$0:Lcom/weirdvoice/ui/Myaccount;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 146
    iget-object v0, p0, Lcom/weirdvoice/ui/Myaccount$4;->this$0:Lcom/weirdvoice/ui/Myaccount;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/Myaccount;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/api/SipManager;->CALLLOG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 147
    new-instance v0, Lcom/weirdvoice/ui/Myaccount$4$DelcallsTask;

    invoke-direct {v0, p0}, Lcom/weirdvoice/ui/Myaccount$4$DelcallsTask;-><init>(Lcom/weirdvoice/ui/Myaccount$4;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/Myaccount$4$DelcallsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 148
    return-void
.end method
