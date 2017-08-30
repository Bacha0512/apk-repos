.class Lcom/weirdvoice/ui/Tabfav$3;
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
    iput-object p1, p0, Lcom/weirdvoice/ui/Tabfav$3;->this$0:Lcom/weirdvoice/ui/Tabfav;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/weirdvoice/ui/Tabfav$3;->this$0:Lcom/weirdvoice/ui/Tabfav;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/Tabfav;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    goto :goto_0
.end method
