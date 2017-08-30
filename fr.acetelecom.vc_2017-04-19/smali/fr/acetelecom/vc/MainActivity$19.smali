.class Lfr/acetelecom/vc/MainActivity$19;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/MainActivity;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfr/acetelecom/vc/MainActivity;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/MainActivity$19;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$19;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity$19;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v1}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v1

    const-string v2, "hideMyPhoneNumber"

    invoke-virtual {v1, v2, p2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lfr/acetelecom/vc/b;->l:Z

    return-void
.end method
