.class public Lcom/digits/sdk/android/internal/d;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/os/Bundle;

.field c:Lcom/digits/sdk/android/internal/c;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/digits/sdk/android/internal/c;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/digits/sdk/android/bp;

.field f:Lcom/digits/sdk/android/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/digits/sdk/android/internal/c;Lcom/digits/sdk/android/bp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/digits/sdk/android/internal/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/digits/sdk/android/internal/d;->b:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/digits/sdk/android/internal/d;->c:Lcom/digits/sdk/android/internal/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/digits/sdk/android/internal/d;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/digits/sdk/android/internal/d;->d:Ljava/util/List;

    sget-object v1, Lcom/digits/sdk/android/internal/c;->b:Lcom/digits/sdk/android/internal/c$a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p4, p0, Lcom/digits/sdk/android/internal/d;->e:Lcom/digits/sdk/android/bp;

    new-instance v0, Lcom/digits/sdk/android/aa;

    invoke-direct {v0}, Lcom/digits/sdk/android/aa;-><init>()V

    iput-object v0, p0, Lcom/digits/sdk/android/internal/d;->f:Lcom/digits/sdk/android/aa;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    iget-object v0, p0, Lcom/digits/sdk/android/internal/d;->c:Lcom/digits/sdk/android/internal/c;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/digits/sdk/android/internal/d;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/digits/sdk/android/internal/d;->e:Lcom/digits/sdk/android/bp;

    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/digits/sdk/android/internal/c;->a(Landroid/content/pm/ResolveInfo;Landroid/content/Context;Landroid/os/Bundle;Lcom/digits/sdk/android/bp;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/pm/LabeledIntent;
    .locals 3

    new-instance v0, Landroid/content/pm/LabeledIntent;

    invoke-virtual {p2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p2, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-direct {v0, p4, p3, v1, v2}, Landroid/content/pm/LabeledIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method protected a(Landroid/os/Bundle;Lcom/digits/sdk/android/bp;)V
    .locals 12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-interface {p2, p1}, Lcom/digits/sdk/android/bp;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/digits/sdk/android/internal/d$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/digits/sdk/android/internal/d$1;-><init>(Lcom/digits/sdk/android/internal/d;Ljava/lang/StringBuilder;Ljava/util/concurrent/CountDownLatch;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v6, Lcom/digits/sdk/android/internal/d$2;

    move-object v7, p0

    move-object v8, v4

    move-object v9, v3

    move-object v10, v2

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/digits/sdk/android/internal/d$2;-><init>(Lcom/digits/sdk/android/internal/d;Ljava/lang/StringBuilder;Ljava/util/concurrent/CountDownLatch;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-interface {p2, p1, v6}, Lcom/digits/sdk/android/bp;->a(Landroid/os/Bundle;Lcom/digits/sdk/android/bn;)V

    invoke-interface {p2, p1, v0}, Lcom/digits/sdk/android/bp;->a(Landroid/os/Bundle;Lcom/digits/sdk/android/bo;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/digits/sdk/android/internal/d;->b:Landroid/os/Bundle;

    const-string v1, "display_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/digits/sdk/android/internal/d;->b:Landroid/os/Bundle;

    const-string v1, "phone_number"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/digits/sdk/android/internal/d;->b:Landroid/os/Bundle;

    const-string v1, "email"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/digits/sdk/android/internal/d;->b:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/digits/sdk/android/internal/d;->e:Lcom/digits/sdk/android/bp;

    invoke-virtual {p0, v0, v1}, Lcom/digits/sdk/android/internal/d;->a(Landroid/os/Bundle;Lcom/digits/sdk/android/bp;)V

    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/digits/sdk/android/internal/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v6, v0

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v0, p0, Lcom/digits/sdk/android/internal/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/internal/c;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/digits/sdk/android/internal/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/digits/sdk/android/internal/d;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/digits/sdk/android/internal/d;->b:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/digits/sdk/android/internal/d;->e:Lcom/digits/sdk/android/bp;

    invoke-virtual/range {v0 .. v5}, Lcom/digits/sdk/android/internal/c;->a(Landroid/content/pm/ResolveInfo;Landroid/content/Context;Landroid/os/Bundle;Lcom/digits/sdk/android/bp;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v7, v1, v11, v0}, Lcom/digits/sdk/android/internal/d;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/pm/LabeledIntent;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/pm/LabeledIntent;

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/LabeledIntent;

    iget-object v1, p0, Lcom/digits/sdk/android/internal/d;->b:Landroid/os/Bundle;

    invoke-virtual {p0, v1, p3, v5}, Lcom/digits/sdk/android/internal/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/digits/sdk/android/internal/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
