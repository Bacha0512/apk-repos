.class public Lfr/acetelecom/vc/o;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Lfr/acetelecom/vc/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/acetelecom/vc/o$a;
    }
.end annotation


# static fields
.field private static k:Landroid/view/View;

.field private static l:Landroid/content/Context;


# instance fields
.field a:Landroid/widget/SeekBar;

.field b:Lfr/acetelecom/vc/b;

.field c:Landroid/widget/Button;

.field d:Landroid/widget/Button;

.field e:Landroid/widget/Button;

.field f:Landroid/widget/ImageButton;

.field g:Landroid/widget/ImageButton;

.field h:Landroid/widget/ImageButton;

.field i:Z

.field j:Lfr/acetelecom/vc/i;

.field private m:Lfr/acetelecom/vc/o$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    iput-object v0, p0, Lfr/acetelecom/vc/o;->a:Landroid/widget/SeekBar;

    iput-object v0, p0, Lfr/acetelecom/vc/o;->b:Lfr/acetelecom/vc/b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/acetelecom/vc/o;->i:Z

    return-void
.end method

.method static synthetic a(Lfr/acetelecom/vc/o;)Lfr/acetelecom/vc/o$a;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/o;->m:Lfr/acetelecom/vc/o$a;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lfr/acetelecom/vc/o;
    .locals 3

    new-instance v0, Lfr/acetelecom/vc/o;

    invoke-direct {v0}, Lfr/acetelecom/vc/o;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param1"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "param2"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lfr/acetelecom/vc/o;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lfr/acetelecom/vc/o;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/o;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/o;->f:Landroid/widget/ImageButton;

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/o;->m:Lfr/acetelecom/vc/o$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lfr/acetelecom/vc/o$a;->a(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lfr/acetelecom/vc/o;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/o;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/o;->m:Lfr/acetelecom/vc/o$a;

    invoke-interface {v0, v2}, Lfr/acetelecom/vc/o$a;->a(Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/o;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/o;->f:Landroid/widget/ImageButton;

    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lfr/acetelecom/vc/o;->f:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/o;->f:Landroid/widget/ImageButton;

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 3

    const/16 v2, 0x8

    new-instance v0, Lfr/acetelecom/vc/b;

    sget-object v1, Lfr/acetelecom/vc/o;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Lfr/acetelecom/vc/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfr/acetelecom/vc/o;->b:Lfr/acetelecom/vc/b;

    sget-object v0, Lfr/acetelecom/vc/o;->k:Landroid/view/View;

    const v1, 0x7f0e0107

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lfr/acetelecom/vc/o;->a:Landroid/widget/SeekBar;

    iget-object v0, p0, Lfr/acetelecom/vc/o;->a:Landroid/widget/SeekBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/o;->b:Lfr/acetelecom/vc/b;

    const-string v1, "progress"

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lfr/acetelecom/vc/o;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/o;->a:Landroid/widget/SeekBar;

    new-instance v1, Lfr/acetelecom/vc/o$1;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/o$1;-><init>(Lfr/acetelecom/vc/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    sget-object v0, Lfr/acetelecom/vc/o;->k:Landroid/view/View;

    const v1, 0x7f0e0109

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lfr/acetelecom/vc/o;->c:Landroid/widget/Button;

    iget-object v0, p0, Lfr/acetelecom/vc/o;->c:Landroid/widget/Button;

    new-instance v1, Lfr/acetelecom/vc/o$2;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/o$2;-><init>(Lfr/acetelecom/vc/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lfr/acetelecom/vc/o;->k:Landroid/view/View;

    const v1, 0x7f0e010a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lfr/acetelecom/vc/o;->d:Landroid/widget/Button;

    iget-object v0, p0, Lfr/acetelecom/vc/o;->d:Landroid/widget/Button;

    new-instance v1, Lfr/acetelecom/vc/o$3;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/o$3;-><init>(Lfr/acetelecom/vc/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lfr/acetelecom/vc/o;->k:Landroid/view/View;

    const v1, 0x7f0e0108

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lfr/acetelecom/vc/o;->e:Landroid/widget/Button;

    iget-object v0, p0, Lfr/acetelecom/vc/o;->e:Landroid/widget/Button;

    new-instance v1, Lfr/acetelecom/vc/o$4;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/o$4;-><init>(Lfr/acetelecom/vc/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lfr/acetelecom/vc/o;->k:Landroid/view/View;

    const v1, 0x7f0e0105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lfr/acetelecom/vc/o;->g:Landroid/widget/ImageButton;

    iget-object v0, p0, Lfr/acetelecom/vc/o;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/o;->g:Landroid/widget/ImageButton;

    new-instance v1, Lfr/acetelecom/vc/o$5;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/o$5;-><init>(Lfr/acetelecom/vc/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lfr/acetelecom/vc/o;->k:Landroid/view/View;

    const v1, 0x7f0e0103

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lfr/acetelecom/vc/o;->h:Landroid/widget/ImageButton;

    iget-object v0, p0, Lfr/acetelecom/vc/o;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/o;->h:Landroid/widget/ImageButton;

    new-instance v1, Lfr/acetelecom/vc/o$6;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/o$6;-><init>(Lfr/acetelecom/vc/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lfr/acetelecom/vc/o;->k:Landroid/view/View;

    const v1, 0x7f0e0104

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lfr/acetelecom/vc/o;->f:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lfr/acetelecom/vc/o;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/o;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    sget-object v0, Lfr/acetelecom/vc/o;->k:Landroid/view/View;

    const v1, 0x7f0e0106

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lfr/acetelecom/vc/o;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/SansitaOne.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v0, Lfr/acetelecom/vc/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p0}, Lfr/acetelecom/vc/i;-><init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lfr/acetelecom/vc/i$a;)V

    iput-object v0, p0, Lfr/acetelecom/vc/o;->j:Lfr/acetelecom/vc/i;

    return-void

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/o;->f:Landroid/widget/ImageButton;

    new-instance v1, Lfr/acetelecom/vc/o$7;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/o$7;-><init>(Lfr/acetelecom/vc/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public e()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lfr/acetelecom/vc/o;->l:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    move v1, v2

    :cond_1
    const-string v4, "VCvoice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "muted : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",audio.isSpeakerphoneOn() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "volume_level : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    sget-object v0, Lfr/acetelecom/vc/o;->l:Landroid/content/Context;

    const v3, 0x7f070077

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    return v1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    instance-of v0, p1, Lfr/acetelecom/vc/o$a;

    if-eqz v0, :cond_0

    check-cast p1, Lfr/acetelecom/vc/o$a;

    iput-object p1, p0, Lfr/acetelecom/vc/o;->m:Lfr/acetelecom/vc/o$a;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lfr/acetelecom/vc/o;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfr/acetelecom/vc/o;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "param1"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lfr/acetelecom/vc/o;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "param2"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VC mParam1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mParam2: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v0, "incall"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/acetelecom/vc/o;->i:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03003b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lfr/acetelecom/vc/o;->k:Landroid/view/View;

    invoke-virtual {p0}, Lfr/acetelecom/vc/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lfr/acetelecom/vc/o;->l:Landroid/content/Context;

    invoke-virtual {p0}, Lfr/acetelecom/vc/o;->d()V

    sget-object v0, Lfr/acetelecom/vc/o;->k:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lfr/acetelecom/vc/o;->m:Lfr/acetelecom/vc/o$a;

    return-void
.end method
