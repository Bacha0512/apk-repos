.class Lfr/acetelecom/vc/MainActivity$28;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lfr/acetelecom/vc/MainActivity$28;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$28;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity$28;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v1}, Lfr/acetelecom/vc/MainActivity;->y(Lfr/acetelecom/vc/MainActivity;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lfr/acetelecom/vc/b;->l:Z

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$28;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v0

    const-string v1, "hideMyPhoneNumber"

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity$28;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v2}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v2

    iget-boolean v2, v2, Lfr/acetelecom/vc/b;->l:Z

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$28;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v0

    iget-boolean v0, v0, Lfr/acetelecom/vc/b;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$28;->a:Lfr/acetelecom/vc/MainActivity;

    const-string v1, "click_anonymous"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lfr/acetelecom/vc/MainActivity;->b(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$28;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->c(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/c;

    move-result-object v0

    invoke-virtual {v0}, Lfr/acetelecom/vc/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$28;->a:Lfr/acetelecom/vc/MainActivity;

    const/16 v1, 0x3e7

    invoke-static {v0, v1}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$28;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->d(Lfr/acetelecom/vc/MainActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$28;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-virtual {v0}, Lfr/acetelecom/vc/MainActivity;->recreate()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$28;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->z(Lfr/acetelecom/vc/MainActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity$28;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v1}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v1

    const-string v2, "[^0-9]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfr/acetelecom/vc/b;->e:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$28;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v0

    const-string v1, "lastphone"

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity$28;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v2}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v2

    iget-object v2, v2, Lfr/acetelecom/vc/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!!!!!!!!!!!!! rec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity$28;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v2}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v2

    iget v2, v2, Lfr/acetelecom/vc/b;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lastphone :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity$28;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v2}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v2

    iget-object v2, v2, Lfr/acetelecom/vc/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*****************"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$28;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->A(Lfr/acetelecom/vc/MainActivity;)V

    goto :goto_0
.end method
