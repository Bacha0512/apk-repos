.class Lfr/acetelecom/vc/MainActivity$6;
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
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lfr/acetelecom/vc/MainActivity;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/MainActivity;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/MainActivity$6;->b:Lfr/acetelecom/vc/MainActivity;

    iput-object p2, p0, Lfr/acetelecom/vc/MainActivity$6;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$6;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
