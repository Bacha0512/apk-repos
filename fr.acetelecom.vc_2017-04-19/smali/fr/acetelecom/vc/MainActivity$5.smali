.class Lfr/acetelecom/vc/MainActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/MainActivity;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Lfr/acetelecom/vc/MainActivity;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/MainActivity;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/MainActivity$5;->c:Lfr/acetelecom/vc/MainActivity;

    iput-object p2, p0, Lfr/acetelecom/vc/MainActivity$5;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lfr/acetelecom/vc/MainActivity$5;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$5;->c:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity$5;->c:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v1}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v1

    const-string v2, "myphone"

    iget-object v3, p0, Lfr/acetelecom/vc/MainActivity$5;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$5;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
