.class public final Lcom/google/android/gms/cast/framework/media/zzal;
.super Landroid/widget/ArrayAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/android/gms/cast/MediaTrack;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzauM:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;I)V"
        }
    .end annotation

    sget v0, Lcom/google/android/gms/R$layout;->cast_tracks_chooser_dialog_row_layout:I

    if-eqz p2, :cond_0

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/zzal;->zzauM:I

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzal;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/zzal;->zzauM:I

    return-void

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzal;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/google/android/gms/R$layout;->cast_tracks_chooser_dialog_row_layout:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v5, Lcom/google/android/gms/cast/framework/media/zzan;

    sget v0, Lcom/google/android/gms/R$id;->text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/google/android/gms/R$id;->radio:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-direct {v5, p0, v0, v1, v4}, Lcom/google/android/gms/cast/framework/media/zzan;-><init>(Lcom/google/android/gms/cast/framework/media/zzal;Landroid/widget/TextView;Landroid/widget/RadioButton;Lcom/google/android/gms/cast/framework/media/zzam;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v6, v5

    move-object v5, p2

    :goto_0
    if-nez v6, :cond_1

    move-object v0, v4

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/zzan;

    move-object v6, v0

    move-object v5, p2

    goto :goto_0

    :cond_1
    iget-object v0, v6, Lcom/google/android/gms/cast/framework/media/zzan;->zzauO:Landroid/widget/RadioButton;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    iget-object v1, v6, Lcom/google/android/gms/cast/framework/media/zzan;->zzauO:Landroid/widget/RadioButton;

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/zzal;->zzauM:I

    if-ne v0, p1, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/zzal;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/MediaTrack;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaTrack;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaTrack;->getSubtype()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzal;->mContext:Landroid/content/Context;

    sget v1, Lcom/google/android/gms/R$string;->cast_tracks_chooser_dialog_closed_captions:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_3
    iget-object v1, v6, Lcom/google/android/gms/cast/framework/media/zzan;->zzauN:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v5

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaTrack;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/MediaUtils;->getTrackLanguage(Lcom/google/android/gms/cast/MediaTrack;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzal;->mContext:Landroid/content/Context;

    sget v1, Lcom/google/android/gms/R$string;->cast_tracks_chooser_dialog_default_track_name:I

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_3
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/zzan;

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/zzan;->zzauO:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/zzal;->zzauM:I

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/zzal;->notifyDataSetChanged()V

    return-void
.end method

.method public final zzod()Lcom/google/android/gms/cast/MediaTrack;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/zzal;->zzauM:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/zzal;->zzauM:I

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/zzal;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/zzal;->zzauM:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/zzal;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/MediaTrack;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
