.class Lcom/weirdvoice/ui/Tabfav$1;
.super Ljava/lang/Object;
.source "Tabfav.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/Tabfav;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/Tabfav;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/Tabfav;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/Tabfav$1;->this$0:Lcom/weirdvoice/ui/Tabfav;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    :try_start_0
    new-instance v0, Lcom/weirdvoice/ui/EditFavs;

    iget-object v1, p0, Lcom/weirdvoice/ui/Tabfav$1;->this$0:Lcom/weirdvoice/ui/Tabfav;

    invoke-direct {v0, v1}, Lcom/weirdvoice/ui/EditFavs;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, "editfavs":Lcom/weirdvoice/ui/EditFavs;
    iget-object v1, p0, Lcom/weirdvoice/ui/Tabfav$1;->this$0:Lcom/weirdvoice/ui/Tabfav;

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/EditFavs;->setOwnerActivity(Landroid/app/Activity;)V

    .line 104
    invoke-virtual {v0}, Lcom/weirdvoice/ui/EditFavs;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v0    # "editfavs":Lcom/weirdvoice/ui/EditFavs;
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v1

    goto :goto_0
.end method
