.class public Lfr/acetelecom/vc/n;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lfr/acetelecom/vc/a/a$a;
.implements Lfr/acetelecom/vc/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/acetelecom/vc/n$a;
    }
.end annotation


# static fields
.field static k:Ljava/lang/String;

.field private static p:Landroid/view/View;

.field private static q:Landroid/content/Context;

.field private static s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/acetelecom/vc/e;",
            ">;"
        }
    .end annotation
.end field

.field private static t:Lfr/acetelecom/vc/a/a;


# instance fields
.field a:Lfr/acetelecom/vc/b;

.field b:Landroid/support/v7/widget/RecyclerView$u;

.field c:Landroid/widget/ImageButton;

.field d:Landroid/widget/ImageButton;

.field e:Landroid/widget/ImageButton;

.field f:Lfr/acetelecom/vc/e;

.field g:Lfr/acetelecom/vc/i;

.field h:Lfr/acetelecom/vc/c/k;

.field i:Z

.field j:I

.field l:Z

.field m:Ljava/lang/String;

.field n:Lorg/json/JSONArray;

.field o:Landroid/support/v7/widget/GridLayoutManager;

.field private r:Landroid/support/v7/widget/RecyclerView;

.field private u:Lfr/acetelecom/vc/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "127845"

    sput-object v0, Lfr/acetelecom/vc/n;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    iput-object v2, p0, Lfr/acetelecom/vc/n;->b:Landroid/support/v7/widget/RecyclerView$u;

    iput-boolean v1, p0, Lfr/acetelecom/vc/n;->i:Z

    const/4 v0, 0x1

    iput v0, p0, Lfr/acetelecom/vc/n;->j:I

    iput-boolean v1, p0, Lfr/acetelecom/vc/n;->l:Z

    iput-object v2, p0, Lfr/acetelecom/vc/n;->n:Lorg/json/JSONArray;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lfr/acetelecom/vc/n;
    .locals 3

    new-instance v0, Lfr/acetelecom/vc/n;

    invoke-direct {v0}, Lfr/acetelecom/vc/n;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param1"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "param2"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lfr/acetelecom/vc/n;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private f()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    new-instance v0, Lfr/acetelecom/vc/b;

    sget-object v1, Lfr/acetelecom/vc/n;->q:Landroid/content/Context;

    invoke-direct {v0, v1}, Lfr/acetelecom/vc/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfr/acetelecom/vc/n;->a:Lfr/acetelecom/vc/b;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/n;->m:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/acetelecom/vc/n;->s:Ljava/util/ArrayList;

    sget-object v0, Lfr/acetelecom/vc/n;->p:Landroid/view/View;

    const v1, 0x7f0e0102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lfr/acetelecom/vc/n;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lfr/acetelecom/vc/n;->r:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    sget-object v1, Lfr/acetelecom/vc/n;->q:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object v0, p0, Lfr/acetelecom/vc/n;->o:Landroid/support/v7/widget/GridLayoutManager;

    iget-object v0, p0, Lfr/acetelecom/vc/n;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lfr/acetelecom/vc/n;->o:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    iget-boolean v0, p0, Lfr/acetelecom/vc/n;->l:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lfr/acetelecom/vc/n;->e()V

    :goto_0
    sget-object v0, Lfr/acetelecom/vc/n;->p:Landroid/view/View;

    const v1, 0x7f0e0105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lfr/acetelecom/vc/n;->d:Landroid/widget/ImageButton;

    iget-object v0, p0, Lfr/acetelecom/vc/n;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-boolean v0, p0, Lfr/acetelecom/vc/n;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/n;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget-object v0, Lfr/acetelecom/vc/n;->p:Landroid/view/View;

    const v1, 0x7f0e0103

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lfr/acetelecom/vc/n;->e:Landroid/widget/ImageButton;

    iget-object v0, p0, Lfr/acetelecom/vc/n;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-boolean v0, p0, Lfr/acetelecom/vc/n;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/n;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget-object v0, Lfr/acetelecom/vc/n;->p:Landroid/view/View;

    const v1, 0x7f0e0104

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lfr/acetelecom/vc/n;->c:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lfr/acetelecom/vc/n;->l:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lfr/acetelecom/vc/n;->c:Landroid/widget/ImageButton;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lfr/acetelecom/vc/n;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_2
    iget-boolean v0, p0, Lfr/acetelecom/vc/n;->i:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lfr/acetelecom/vc/n;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_1
    new-instance v0, Lfr/acetelecom/vc/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p0}, Lfr/acetelecom/vc/i;-><init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lfr/acetelecom/vc/i$a;)V

    iput-object v0, p0, Lfr/acetelecom/vc/n;->g:Lfr/acetelecom/vc/i;

    new-instance v0, Lfr/acetelecom/vc/c/k;

    sget-object v1, Lfr/acetelecom/vc/n;->q:Landroid/content/Context;

    invoke-direct {v0, v1}, Lfr/acetelecom/vc/c/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfr/acetelecom/vc/n;->h:Lfr/acetelecom/vc/c/k;

    sget-object v0, Lfr/acetelecom/vc/n;->p:Landroid/view/View;

    const v1, 0x7f0e0101

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lfr/acetelecom/vc/n;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/SansitaOne.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-boolean v1, p0, Lfr/acetelecom/vc/n;->l:Z

    if-eqz v1, :cond_3

    const v1, 0x7f07008b

    invoke-virtual {p0, v1}, Lfr/acetelecom/vc/n;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lfr/acetelecom/vc/n;->d()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lfr/acetelecom/vc/n;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private g()V
    .locals 14

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lfr/acetelecom/vc/n;->n:Lorg/json/JSONArray;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lfr/acetelecom/vc/n;->n:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_6

    move v6, v7

    :goto_0
    iget-object v0, p0, Lfr/acetelecom/vc/n;->n:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_5

    new-instance v0, Landroid/widget/ImageView;

    sget-object v1, Lfr/acetelecom/vc/n;->q:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    :try_start_0
    iget-object v1, p0, Lfr/acetelecom/vc/n;->n:Lorg/json/JSONArray;

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v1, "name"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    const-string v2, "pos"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    :try_start_2
    const-string v2, "remote"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    if-eqz v2, :cond_3

    :try_start_3
    const-string v2, "mp3Url"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v4

    :try_start_4
    new-instance v10, Lfr/acetelecom/vc/h;

    invoke-direct {v10, v0, v1}, Lfr/acetelecom/vc/h;-><init>(Landroid/widget/ImageView;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ".png"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lfr/acetelecom/vc/h;->a(Ljava/lang/String;)Landroid/widget/ImageView;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :try_start_5
    new-array v0, v0, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "imgUrl"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v11

    invoke-virtual {v10, v0}, Lfr/acetelecom/vc/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object v0, v8

    :goto_1
    move v3, v9

    move-object v13, v0

    move-object v0, v2

    move-object v2, v13

    :goto_2
    if-eqz v0, :cond_1

    sget-object v10, Lfr/acetelecom/vc/n;->p:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "drawable"

    sget-object v12, Lfr/acetelecom/vc/n;->q:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v1, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_0
    sget-object v10, Lfr/acetelecom/vc/n;->s:Ljava/util/ArrayList;

    new-instance v0, Lfr/acetelecom/vc/e;

    invoke-direct/range {v0 .. v5}, Lfr/acetelecom/vc/e;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;ZLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0

    :cond_2
    :try_start_6
    iget-object v0, v10, Lfr/acetelecom/vc/h;->a:Landroid/graphics/Bitmap;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_1

    :cond_3
    :try_start_7
    sget-object v2, Lfr/acetelecom/vc/n;->p:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    sget-object v4, Lfr/acetelecom/vc/n;->q:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v4, v8

    move-object v2, v8

    move v3, v7

    goto :goto_2

    :catch_0
    move-exception v1

    move v5, v7

    move-object v4, v8

    move v3, v7

    move-object v1, v8

    :goto_4
    if-eqz v0, :cond_1

    sget-object v2, Lfr/acetelecom/vc/n;->p:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v10, "drawable"

    sget-object v11, Lfr/acetelecom/vc/n;->q:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v1, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-nez v8, :cond_8

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_5
    sget-object v10, Lfr/acetelecom/vc/n;->s:Ljava/util/ArrayList;

    new-instance v0, Lfr/acetelecom/vc/e;

    invoke-direct/range {v0 .. v5}, Lfr/acetelecom/vc/e;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;ZLjava/lang/String;I)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v6, v1

    move v5, v7

    move-object v4, v8

    move v3, v7

    move-object v1, v8

    :goto_6
    if-eqz v0, :cond_4

    sget-object v2, Lfr/acetelecom/vc/n;->p:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v7, "drawable"

    sget-object v9, Lfr/acetelecom/vc/n;->q:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v1, v7, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-nez v8, :cond_7

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_7
    sget-object v7, Lfr/acetelecom/vc/n;->s:Ljava/util/ArrayList;

    new-instance v0, Lfr/acetelecom/vc/e;

    invoke-direct/range {v0 .. v5}, Lfr/acetelecom/vc/e;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;ZLjava/lang/String;I)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    throw v6

    :cond_5
    new-instance v0, Lfr/acetelecom/vc/a/a;

    invoke-virtual {p0}, Lfr/acetelecom/vc/n;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lfr/acetelecom/vc/n;->s:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lfr/acetelecom/vc/a/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lfr/acetelecom/vc/n;)V

    sput-object v0, Lfr/acetelecom/vc/n;->t:Lfr/acetelecom/vc/a/a;

    sget-object v0, Lfr/acetelecom/vc/n;->t:Lfr/acetelecom/vc/a/a;

    invoke-virtual {v0, p0}, Lfr/acetelecom/vc/a/a;->a(Lfr/acetelecom/vc/a/a$a;)V

    sget-object v0, Lfr/acetelecom/vc/n;->t:Lfr/acetelecom/vc/a/a;

    iget-boolean v1, p0, Lfr/acetelecom/vc/n;->l:Z

    invoke-virtual {v0, v1}, Lfr/acetelecom/vc/a/a;->a(Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/n;->r:Landroid/support/v7/widget/RecyclerView;

    sget-object v1, Lfr/acetelecom/vc/n;->t:Lfr/acetelecom/vc/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    sget-object v0, Lfr/acetelecom/vc/n;->t:Lfr/acetelecom/vc/a/a;

    invoke-virtual {v0}, Lfr/acetelecom/vc/a/a;->e()V

    const-string v0, "SF"

    const-string v1, "end populate"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/n;->r:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lfr/acetelecom/vc/n$1;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/n$1;-><init>(Lfr/acetelecom/vc/n;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_6
    return-void

    :catchall_1
    move-exception v2

    move-object v6, v2

    move v5, v7

    move-object v4, v8

    move v3, v7

    goto :goto_6

    :catchall_2
    move-exception v2

    move-object v6, v2

    move-object v4, v8

    move v3, v7

    goto :goto_6

    :catchall_3
    move-exception v2

    move-object v6, v2

    move-object v4, v8

    move v3, v9

    goto :goto_6

    :catchall_4
    move-exception v2

    move-object v6, v2

    move v3, v9

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v6, v0

    move v3, v9

    move-object v0, v2

    goto :goto_6

    :catch_1
    move-exception v2

    move v5, v7

    move-object v4, v8

    move v3, v7

    goto/16 :goto_4

    :catch_2
    move-exception v2

    move-object v4, v8

    move v3, v7

    goto/16 :goto_4

    :catch_3
    move-exception v2

    move-object v4, v8

    move v3, v9

    goto/16 :goto_4

    :catch_4
    move-exception v2

    move v3, v9

    goto/16 :goto_4

    :catch_5
    move-exception v0

    move v3, v9

    move-object v0, v2

    goto/16 :goto_4

    :cond_7
    move-object v2, v8

    goto :goto_7

    :cond_8
    move-object v2, v8

    goto/16 :goto_5
.end method


# virtual methods
.method public a()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lfr/acetelecom/vc/n;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/n;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/n;->c:Landroid/widget/ImageButton;

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/n;->u:Lfr/acetelecom/vc/n$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lfr/acetelecom/vc/n$a;->a(Z)V

    return-void
.end method

.method public a(I)V
    .locals 3

    iget-boolean v0, p0, Lfr/acetelecom/vc/n;->l:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/n;->b:Landroid/support/v7/widget/RecyclerView$u;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "SF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itemChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/n;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0, p1}, Lfr/acetelecom/vc/n;->a(Landroid/support/v7/widget/RecyclerView;I)V

    iget-object v0, p0, Lfr/acetelecom/vc/n;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->b(I)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/n;->b:Landroid/support/v7/widget/RecyclerView$u;

    iget-object v0, p0, Lfr/acetelecom/vc/n;->b:Landroid/support/v7/widget/RecyclerView$u;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfr/acetelecom/vc/n;->b:Landroid/support/v7/widget/RecyclerView$u;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    :goto_1
    sget-object v0, Lfr/acetelecom/vc/n;->t:Lfr/acetelecom/vc/a/a;

    invoke-virtual {v0, p1}, Lfr/acetelecom/vc/a/a;->d(I)V

    goto :goto_0

    :cond_2
    const-string v0, "SF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "********* itemChanged oldRv == nul !!!!!!!!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$u;ILfr/acetelecom/vc/e;)V
    .locals 3

    iput-object p1, p0, Lfr/acetelecom/vc/n;->b:Landroid/support/v7/widget/RecyclerView$u;

    iget-object v0, p0, Lfr/acetelecom/vc/n;->b:Landroid/support/v7/widget/RecyclerView$u;

    if-nez v0, :cond_0

    const-string v0, "SF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "********* onAmbDetected oldRv null onAmbDetected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "********* onAmbDetected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/n;->b:Landroid/support/v7/widget/RecyclerView$u;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/view/View;)I

    move-result v3

    sub-int v0, v3, p2

    mul-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    :cond_0
    const-string v1, "SF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "********* scrollToPosition "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lfr/acetelecom/vc/n;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, v6}, Landroid/support/v7/widget/RecyclerView;->scrollTo(II)V

    iget-object v0, p0, Lfr/acetelecom/vc/n;->o:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, p2, v6}, Landroid/support/v7/widget/GridLayoutManager;->b(II)V

    return-void
.end method

.method public a(Landroid/view/View;ILfr/acetelecom/vc/e;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v1, -0x1

    iput-object p3, p0, Lfr/acetelecom/vc/n;->f:Lfr/acetelecom/vc/e;

    iget-boolean v0, p0, Lfr/acetelecom/vc/n;->l:Z

    if-nez v0, :cond_8

    move v0, p2

    :goto_0
    const-string v2, "SF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "********* onClickSound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfr/acetelecom/vc/n;->f:Lfr/acetelecom/vc/e;

    invoke-virtual {v4}, Lfr/acetelecom/vc/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lfr/acetelecom/vc/n;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p2}, Landroid/support/v7/widget/RecyclerView;->b(I)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/n;->b:Landroid/support/v7/widget/RecyclerView$u;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lfr/acetelecom/vc/n;->b:Landroid/support/v7/widget/RecyclerView$u;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setActivated(Z)V

    iget-boolean v3, p0, Lfr/acetelecom/vc/n;->l:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lfr/acetelecom/vc/n;->g:Lfr/acetelecom/vc/i;

    invoke-virtual {v3}, Lfr/acetelecom/vc/i;->a()V

    :cond_0
    iget-object v3, p0, Lfr/acetelecom/vc/n;->b:Landroid/support/v7/widget/RecyclerView$u;

    if-eq v3, v2, :cond_6

    iget-boolean v1, p0, Lfr/acetelecom/vc/n;->l:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lfr/acetelecom/vc/n;->g:Lfr/acetelecom/vc/i;

    invoke-virtual {v1}, Lfr/acetelecom/vc/i;->a()V

    :cond_1
    invoke-virtual {p1, v7}, Landroid/view/View;->setActivated(Z)V

    iput-object v2, p0, Lfr/acetelecom/vc/n;->b:Landroid/support/v7/widget/RecyclerView$u;

    iget-object v1, p0, Lfr/acetelecom/vc/n;->c:Landroid/widget/ImageButton;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v1, p0, Lfr/acetelecom/vc/n;->c:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-boolean v1, p0, Lfr/acetelecom/vc/n;->i:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lfr/acetelecom/vc/n;->l:Z

    if-nez v1, :cond_2

    iget v1, p0, Lfr/acetelecom/vc/n;->j:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lfr/acetelecom/vc/n;->j:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lfr/acetelecom/vc/n;->h:Lfr/acetelecom/vc/c/k;

    iget-object v2, p0, Lfr/acetelecom/vc/n;->c:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Lfr/acetelecom/vc/c/k;->a(Landroid/view/View;)V

    :cond_2
    iget-boolean v1, p0, Lfr/acetelecom/vc/n;->l:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lfr/acetelecom/vc/n;->g:Lfr/acetelecom/vc/i;

    iget-object v2, p0, Lfr/acetelecom/vc/n;->f:Lfr/acetelecom/vc/e;

    invoke-virtual {v2}, Lfr/acetelecom/vc/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/acetelecom/vc/i;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lfr/acetelecom/vc/n;->a:Lfr/acetelecom/vc/b;

    const-string v2, "dataSoundName"

    iget-object v3, p0, Lfr/acetelecom/vc/n;->f:Lfr/acetelecom/vc/e;

    invoke-virtual {v3}, Lfr/acetelecom/vc/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "SF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ambiance ambpos ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/n;->a:Lfr/acetelecom/vc/b;

    const-string v4, "dataSoundName"

    invoke-virtual {v3, v4, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lfr/acetelecom/vc/n;->u:Lfr/acetelecom/vc/n$a;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lfr/acetelecom/vc/n;->u:Lfr/acetelecom/vc/n$a;

    iget-object v2, p0, Lfr/acetelecom/vc/n;->f:Lfr/acetelecom/vc/e;

    iget v2, v2, Lfr/acetelecom/vc/e;->a:I

    iget-boolean v3, p0, Lfr/acetelecom/vc/n;->l:Z

    invoke-interface {v1, v2, v3, v0}, Lfr/acetelecom/vc/n$a;->a(IZI)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget-boolean v1, p0, Lfr/acetelecom/vc/n;->i:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lfr/acetelecom/vc/n;->g:Lfr/acetelecom/vc/i;

    sget-object v2, Lfr/acetelecom/vc/n;->q:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/n;->f:Lfr/acetelecom/vc/e;

    invoke-virtual {v3}, Lfr/acetelecom/vc/e;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "raw"

    invoke-virtual {p0}, Lfr/acetelecom/vc/n;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lfr/acetelecom/vc/i;->a(I)V

    goto :goto_1

    :cond_6
    iput-object v5, p0, Lfr/acetelecom/vc/n;->b:Landroid/support/v7/widget/RecyclerView$u;

    iget-boolean v0, p0, Lfr/acetelecom/vc/n;->l:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lfr/acetelecom/vc/n;->u:Lfr/acetelecom/vc/n$a;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lfr/acetelecom/vc/n;->u:Lfr/acetelecom/vc/n$a;

    iget-boolean v2, p0, Lfr/acetelecom/vc/n;->l:Z

    invoke-interface {v0, v1, v2, v1}, Lfr/acetelecom/vc/n$a;->a(IZI)V

    iget-object v0, p0, Lfr/acetelecom/vc/n;->c:Landroid/widget/ImageButton;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lfr/acetelecom/vc/n;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/n;->a:Lfr/acetelecom/vc/b;

    const-string v1, "dataSoundName"

    invoke-virtual {v0, v1, v5}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "SF"

    const-string v1, "aucune ambiance choisie"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-boolean v0, p0, Lfr/acetelecom/vc/n;->i:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lfr/acetelecom/vc/n;->g:Lfr/acetelecom/vc/i;

    invoke-virtual {v0}, Lfr/acetelecom/vc/i;->a()V

    goto :goto_2

    :cond_8
    move v0, v1

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lfr/acetelecom/vc/n;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/n;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/n;->u:Lfr/acetelecom/vc/n$a;

    invoke-interface {v0, v1}, Lfr/acetelecom/vc/n$a;->a(Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/n;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/n;->c:Landroid/widget/ImageButton;

    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/n;->b:Landroid/support/v7/widget/RecyclerView$u;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lfr/acetelecom/vc/n;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/n;->b:Landroid/support/v7/widget/RecyclerView$u;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Lfr/acetelecom/vc/n;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SF"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lfr/acetelecom/vc/n;->c:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/n;->c:Landroid/widget/ImageButton;

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lfr/acetelecom/vc/n;->b:Landroid/support/v7/widget/RecyclerView$u;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lfr/acetelecom/vc/n;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/n;->b:Landroid/support/v7/widget/RecyclerView$u;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lfr/acetelecom/vc/n;->a:Lfr/acetelecom/vc/b;

    const-string v1, "pcListJsonStr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pc_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/n;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "pc_en.json"

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "version"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "ambiances"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lfr/acetelecom/vc/n;->n:Lorg/json/JSONArray;

    iget-object v2, p0, Lfr/acetelecom/vc/n;->a:Lfr/acetelecom/vc/b;

    const-string v3, "pcListJsonStr"

    invoke-virtual {v2, v3, v1}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lfr/acetelecom/vc/n;->a:Lfr/acetelecom/vc/b;

    const-string v2, "pcListJsonVer"

    invoke-virtual {v1, v2, v0}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SF"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lfr/acetelecom/vc/n;->n:Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "SF"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lfr/acetelecom/vc/n;->a:Lfr/acetelecom/vc/b;

    const-string v1, "brListJsonStr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pc_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/n;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "pc_en.json"

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "version"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "bruitages"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lfr/acetelecom/vc/n;->n:Lorg/json/JSONArray;

    iget-object v2, p0, Lfr/acetelecom/vc/n;->a:Lfr/acetelecom/vc/b;

    const-string v3, "brListJsonStr"

    invoke-virtual {v2, v3, v1}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lfr/acetelecom/vc/n;->a:Lfr/acetelecom/vc/b;

    const-string v2, "pcListJsonVer"

    invoke-virtual {v1, v2, v0}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SF"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lfr/acetelecom/vc/n;->n:Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "SF"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    instance-of v0, p1, Lfr/acetelecom/vc/n$a;

    if-eqz v0, :cond_0

    check-cast p1, Lfr/acetelecom/vc/n$a;

    iput-object p1, p0, Lfr/acetelecom/vc/n;->u:Lfr/acetelecom/vc/n$a;

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

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lfr/acetelecom/vc/n;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/n;->g:Lfr/acetelecom/vc/i;

    iget-object v1, p0, Lfr/acetelecom/vc/n;->f:Lfr/acetelecom/vc/e;

    invoke-virtual {v1}, Lfr/acetelecom/vc/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/acetelecom/vc/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/n;->a:Lfr/acetelecom/vc/b;

    const-string v1, "dataSoundName"

    iget-object v2, p0, Lfr/acetelecom/vc/n;->f:Lfr/acetelecom/vc/e;

    invoke-virtual {v2}, Lfr/acetelecom/vc/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "SF"

    const-string v1, " ambiance choisie"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lfr/acetelecom/vc/n;->g:Lfr/acetelecom/vc/i;

    iget-object v1, p0, Lfr/acetelecom/vc/n;->a:Lfr/acetelecom/vc/b;

    const-string v2, "seekvalue"

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lfr/acetelecom/vc/i;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    const-string v0, "SF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " verif ambiance choisie ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/n;->a:Lfr/acetelecom/vc/b;

    const-string v3, "dataSoundName"

    invoke-virtual {v2, v3, v4}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/n;->g:Lfr/acetelecom/vc/i;

    iget-object v1, p0, Lfr/acetelecom/vc/n;->a:Lfr/acetelecom/vc/b;

    const-string v2, "dataSoundName"

    invoke-virtual {v1, v2, v4}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/acetelecom/vc/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/n;->g:Lfr/acetelecom/vc/i;

    invoke-virtual {v0}, Lfr/acetelecom/vc/i;->a()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lfr/acetelecom/vc/n;->g:Lfr/acetelecom/vc/i;

    invoke-virtual {v0}, Lfr/acetelecom/vc/i;->b()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lfr/acetelecom/vc/n;->u:Lfr/acetelecom/vc/n$a;

    iget-object v1, p0, Lfr/acetelecom/vc/n;->g:Lfr/acetelecom/vc/i;

    iget-object v1, v1, Lfr/acetelecom/vc/i;->a:Ljava/lang/String;

    iget-object v2, p0, Lfr/acetelecom/vc/n;->f:Lfr/acetelecom/vc/e;

    invoke-interface {v0, v1, v2}, Lfr/acetelecom/vc/n$a;->a(Ljava/lang/String;Lfr/acetelecom/vc/e;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0e0103
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lfr/acetelecom/vc/n;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lfr/acetelecom/vc/n;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "param1"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lfr/acetelecom/vc/n;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "param2"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SL mParam1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mParam2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v2, "br"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v5, p0, Lfr/acetelecom/vc/n;->l:Z

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "incall"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v5, p0, Lfr/acetelecom/vc/n;->i:Z

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03003a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lfr/acetelecom/vc/n;->p:Landroid/view/View;

    invoke-virtual {p0}, Lfr/acetelecom/vc/n;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lfr/acetelecom/vc/n;->q:Landroid/content/Context;

    invoke-direct {p0}, Lfr/acetelecom/vc/n;->f()V

    invoke-direct {p0}, Lfr/acetelecom/vc/n;->g()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/n;->setHasOptionsMenu(Z)V

    sget-object v0, Lfr/acetelecom/vc/n;->p:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lfr/acetelecom/vc/n;->u:Lfr/acetelecom/vc/n$a;

    return-void
.end method
