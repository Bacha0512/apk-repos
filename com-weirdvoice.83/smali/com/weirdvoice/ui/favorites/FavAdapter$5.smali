.class Lcom/weirdvoice/ui/favorites/FavAdapter$5;
.super Ljava/lang/Object;
.source "FavAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/favorites/FavAdapter;->showDialogForGroupSelection(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/favorites/FavAdapter;

.field private final synthetic val$choiceCursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/favorites/FavAdapter;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/favorites/FavAdapter$5;->this$0:Lcom/weirdvoice/ui/favorites/FavAdapter;

    iput-object p2, p0, Lcom/weirdvoice/ui/favorites/FavAdapter$5;->val$choiceCursor:Landroid/database/Cursor;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/weirdvoice/ui/favorites/FavAdapter$5;->val$choiceCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/weirdvoice/ui/favorites/FavAdapter$5;->val$choiceCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 332
    :cond_0
    return-void
.end method
