.class public Lcom/weirdvoice/ui/help/HowDialDialog;
.super Lcom/actionbarsherlock/app/SherlockDialogFragment;
.source "HowDialDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/weirdvoice/ui/help/HowDialDialog;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/weirdvoice/ui/help/HowDialDialog;

    invoke-direct {v0}, Lcom/weirdvoice/ui/help/HowDialDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCustomView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    const v2, 0x7f03003f

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 43
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f0b00e2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    .local v0, "tex_support":Landroid/widget/TextView;
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getSupportEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-object v1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/help/HowDialDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 27
    const v1, 0x1080040

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 28
    const v1, 0x7f0c0255

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 29
    const v1, 0x7f0c01f1

    .line 30
    new-instance v2, Lcom/weirdvoice/ui/help/HowDialDialog$1;

    invoke-direct {v2, p0}, Lcom/weirdvoice/ui/help/HowDialDialog$1;-><init>(Lcom/weirdvoice/ui/help/HowDialDialog;)V

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/weirdvoice/ui/help/HowDialDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/weirdvoice/ui/help/HowDialDialog;->getCustomView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 26
    return-object v0
.end method
