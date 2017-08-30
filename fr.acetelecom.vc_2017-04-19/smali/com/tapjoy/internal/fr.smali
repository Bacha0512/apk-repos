.class public final Lcom/tapjoy/internal/fr;
.super Lcom/tapjoy/internal/ft;


# static fields
.field public static a:Lcom/tapjoy/internal/fr;


# instance fields
.field final b:Lcom/tapjoy/internal/fm;

.field final c:Ljava/lang/String;

.field final d:Lcom/tapjoy/internal/gh;

.field e:Lcom/tapjoy/internal/e;

.field f:J

.field g:Z

.field private k:Z

.field private l:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/fm;Ljava/lang/String;Lcom/tapjoy/internal/gh;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/ft;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/fr;->g:Z

    iput-object p1, p0, Lcom/tapjoy/internal/fr;->b:Lcom/tapjoy/internal/fm;

    iput-object p2, p0, Lcom/tapjoy/internal/fr;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/internal/fr;->d:Lcom/tapjoy/internal/gh;

    iput-object p4, p0, Lcom/tapjoy/internal/fr;->l:Landroid/content/Context;

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "tapjoy:hardwareAccelerated"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/fr;->d:Lcom/tapjoy/internal/gh;

    iget-object v1, v0, Lcom/tapjoy/internal/gh;->a:Lcom/tapjoy/internal/gk;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tapjoy/internal/gh;->a:Lcom/tapjoy/internal/gk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gk;->a()V

    :cond_0
    iget-object v1, v0, Lcom/tapjoy/internal/gh;->b:Lcom/tapjoy/internal/gk;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/tapjoy/internal/gh;->b:Lcom/tapjoy/internal/gk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gk;->a()V

    :cond_1
    iget-object v1, v0, Lcom/tapjoy/internal/gh;->c:Lcom/tapjoy/internal/gk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gk;->a()V

    iget-object v1, v0, Lcom/tapjoy/internal/gh;->e:Lcom/tapjoy/internal/gk;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/tapjoy/internal/gh;->e:Lcom/tapjoy/internal/gk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gk;->a()V

    :cond_2
    iget-object v1, v0, Lcom/tapjoy/internal/gh;->f:Lcom/tapjoy/internal/gk;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/tapjoy/internal/gh;->f:Lcom/tapjoy/internal/gk;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gk;->a()V

    :cond_3
    iget-object v1, v0, Lcom/tapjoy/internal/gh;->m:Lcom/tapjoy/internal/gi;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/tapjoy/internal/gh;->m:Lcom/tapjoy/internal/gi;

    iget-object v1, v1, Lcom/tapjoy/internal/gi;->a:Lcom/tapjoy/internal/gk;

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/tapjoy/internal/gh;->m:Lcom/tapjoy/internal/gi;

    iget-object v0, v0, Lcom/tapjoy/internal/gi;->a:Lcom/tapjoy/internal/gk;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gk;->a()V

    :cond_4
    return-void
.end method

.method final a(Landroid/app/Activity;Lcom/tapjoy/internal/fn;)V
    .locals 11

    const v10, 0x3e99999a    # 0.3f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v9, 0x3ecccccd    # 0.4f

    const/high16 v8, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/tapjoy/internal/fr;->k:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/tapjoy/internal/cq;->a(Z)V

    iput-boolean v1, p0, Lcom/tapjoy/internal/fr;->k:Z

    sput-object p0, Lcom/tapjoy/internal/fr;->a:Lcom/tapjoy/internal/fr;

    new-instance v0, Lcom/tapjoy/internal/e;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/internal/fr;->e:Lcom/tapjoy/internal/e;

    iget-object v0, p0, Lcom/tapjoy/internal/fr;->e:Lcom/tapjoy/internal/e;

    new-instance v3, Lcom/tapjoy/internal/fr$2;

    invoke-direct {v3, p0, p2}, Lcom/tapjoy/internal/fr$2;-><init>(Lcom/tapjoy/internal/fr;Lcom/tapjoy/internal/fn;)V

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/e;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/tapjoy/internal/fr;->e:Lcom/tapjoy/internal/e;

    new-instance v3, Lcom/tapjoy/internal/fr$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/tapjoy/internal/fr$3;-><init>(Lcom/tapjoy/internal/fr;Landroid/app/Activity;Lcom/tapjoy/internal/fn;)V

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/e;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/tapjoy/internal/fr;->e:Lcom/tapjoy/internal/e;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/e;->setCanceledOnTouchOutside(Z)V

    new-instance v0, Lcom/tapjoy/internal/gy;

    iget-object v3, p0, Lcom/tapjoy/internal/fr;->d:Lcom/tapjoy/internal/gh;

    new-instance v4, Lcom/tapjoy/internal/fr$4;

    invoke-direct {v4, p0, p1, p2}, Lcom/tapjoy/internal/fr$4;-><init>(Lcom/tapjoy/internal/fr;Landroid/app/Activity;Lcom/tapjoy/internal/fn;)V

    invoke-direct {v0, p1, v3, v4}, Lcom/tapjoy/internal/gy;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/gh;Lcom/tapjoy/internal/gy$a;)V

    new-instance v3, Lcom/tapjoy/internal/gx;

    iget-object v4, p0, Lcom/tapjoy/internal/fr;->d:Lcom/tapjoy/internal/gh;

    invoke-direct {v3, p1, v4, v0}, Lcom/tapjoy/internal/gx;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/gh;Lcom/tapjoy/internal/gy;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x11

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/tapjoy/internal/fr;->e:Lcom/tapjoy/internal/e;

    invoke-virtual {v4, v0}, Lcom/tapjoy/internal/e;->setContentView(Landroid/view/View;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fr;->e:Lcom/tapjoy/internal/e;

    invoke-virtual {v0}, Lcom/tapjoy/internal/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    const-string v4, "4.1.2"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/tapjoy/internal/fr;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    :goto_1
    if-eqz v0, :cond_0

    sget v0, Lcom/tapjoy/internal/ai$a;->b:I

    new-instance v4, Lcom/tapjoy/internal/aj;

    invoke-direct {v4}, Lcom/tapjoy/internal/aj;-><init>()V

    sget-object v5, Lcom/tapjoy/internal/ai$1;->a:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_0

    :goto_2
    invoke-virtual {v4}, Lcom/tapjoy/internal/aj;->b()Lcom/tapjoy/internal/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/ai;->a()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/gx;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fr;->e:Lcom/tapjoy/internal/e;

    invoke-virtual {v0}, Lcom/tapjoy/internal/e;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/tapjoy/internal/fr;->e:Lcom/tapjoy/internal/e;

    invoke-virtual {v0}, Lcom/tapjoy/internal/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/fr;->e:Lcom/tapjoy/internal/e;

    invoke-virtual {v0}, Lcom/tapjoy/internal/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/internal/fr;->f:J

    iget-object v0, p0, Lcom/tapjoy/internal/fr;->b:Lcom/tapjoy/internal/fm;

    iget-object v1, p0, Lcom/tapjoy/internal/fr;->d:Lcom/tapjoy/internal/gh;

    iget-object v1, v1, Lcom/tapjoy/internal/gh;->k:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fm;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tapjoy/internal/fr;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/tapjoy/internal/fn;->c(Ljava/lang/String;)V

    return-void

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    const/high16 v4, 0x1000000

    const/high16 v5, 0x1000000

    invoke-virtual {v0, v4, v5}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    move v0, v1

    goto :goto_1

    :pswitch_0
    new-instance v0, Lcom/tapjoy/internal/al;

    invoke-direct {v0}, Lcom/tapjoy/internal/al;-><init>()V

    iput-boolean v2, v0, Lcom/tapjoy/internal/al;->a:Z

    const/high16 v1, 0x42700000    # 60.0f

    iput v1, v0, Lcom/tapjoy/internal/al;->b:F

    invoke-virtual {v0}, Lcom/tapjoy/internal/al;->a()Lcom/tapjoy/internal/ak;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    move-result-object v0

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v9, v8, v9, v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    move-result-object v0

    new-instance v1, Lcom/tapjoy/internal/am;

    invoke-direct {v1}, Lcom/tapjoy/internal/am;-><init>()V

    invoke-virtual {v1, v8}, Lcom/tapjoy/internal/am;->a(F)Lcom/tapjoy/internal/am;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/tapjoy/internal/am;->b(F)Lcom/tapjoy/internal/am;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/am;->a()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    goto/16 :goto_2

    :pswitch_1
    new-instance v0, Lcom/tapjoy/internal/al;

    invoke-direct {v0}, Lcom/tapjoy/internal/al;-><init>()V

    iput-boolean v2, v0, Lcom/tapjoy/internal/al;->a:Z

    const/high16 v1, -0x3d900000    # -60.0f

    iput v1, v0, Lcom/tapjoy/internal/al;->b:F

    invoke-virtual {v0}, Lcom/tapjoy/internal/al;->a()Lcom/tapjoy/internal/ak;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    move-result-object v0

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v9, v8, v9, v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    move-result-object v0

    new-instance v1, Lcom/tapjoy/internal/am;

    invoke-direct {v1}, Lcom/tapjoy/internal/am;-><init>()V

    const v2, -0x41333333    # -0.4f

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/am;->a(F)Lcom/tapjoy/internal/am;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/tapjoy/internal/am;->b(F)Lcom/tapjoy/internal/am;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/am;->a()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    goto/16 :goto_2

    :pswitch_2
    new-instance v0, Lcom/tapjoy/internal/al;

    invoke-direct {v0}, Lcom/tapjoy/internal/al;-><init>()V

    iput-boolean v1, v0, Lcom/tapjoy/internal/al;->a:Z

    const/high16 v1, -0x3d900000    # -60.0f

    iput v1, v0, Lcom/tapjoy/internal/al;->b:F

    invoke-virtual {v0}, Lcom/tapjoy/internal/al;->a()Lcom/tapjoy/internal/ak;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    move-result-object v0

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v9, v8, v9, v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    move-result-object v0

    new-instance v1, Lcom/tapjoy/internal/am;

    invoke-direct {v1}, Lcom/tapjoy/internal/am;-><init>()V

    invoke-virtual {v1, v10}, Lcom/tapjoy/internal/am;->a(F)Lcom/tapjoy/internal/am;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/tapjoy/internal/am;->b(F)Lcom/tapjoy/internal/am;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/am;->a()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    goto/16 :goto_2

    :pswitch_3
    new-instance v0, Lcom/tapjoy/internal/al;

    invoke-direct {v0}, Lcom/tapjoy/internal/al;-><init>()V

    iput-boolean v1, v0, Lcom/tapjoy/internal/al;->a:Z

    const/high16 v1, 0x42700000    # 60.0f

    iput v1, v0, Lcom/tapjoy/internal/al;->b:F

    invoke-virtual {v0}, Lcom/tapjoy/internal/al;->a()Lcom/tapjoy/internal/ak;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    move-result-object v0

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v9, v8, v9, v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    move-result-object v0

    new-instance v1, Lcom/tapjoy/internal/am;

    invoke-direct {v1}, Lcom/tapjoy/internal/am;-><init>()V

    invoke-virtual {v1, v10}, Lcom/tapjoy/internal/am;->a(F)Lcom/tapjoy/internal/am;

    move-result-object v1

    const v2, -0x41333333    # -0.4f

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/am;->b(F)Lcom/tapjoy/internal/am;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/am;->a()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    goto/16 :goto_2

    :catch_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/tapjoy/internal/fn;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tapjoy/internal/fr;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/c;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/internal/fr;->a(Landroid/app/Activity;Lcom/tapjoy/internal/fn;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tapjoy/internal/fr;->c:Ljava/lang/String;

    aput-object v4, v0, v3
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :cond_0
    invoke-static {}, Lcom/tapjoy/internal/fe;->a()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {}, Lcom/tapjoy/internal/fm;->a()Lcom/tapjoy/internal/fm;

    move-result-object v4

    iget-object v4, v4, Lcom/tapjoy/internal/fm;->e:Landroid/content/Context;

    :try_start_1
    new-instance v5, Lcom/tapjoy/internal/fr$1;

    invoke-direct {v5, p0, p1}, Lcom/tapjoy/internal/fr$1;-><init>(Lcom/tapjoy/internal/fr;Lcom/tapjoy/internal/fn;)V

    invoke-static {v4, v5, v0}, Lcom/tapjoy/TJContentActivity;->start(Landroid/content/Context;Lcom/tapjoy/TJContentActivity$ContentProducer;Z)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tapjoy/internal/fr;->c:Ljava/lang/String;

    aput-object v5, v0, v4
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_2
    invoke-virtual {p0, v3, p1}, Lcom/tapjoy/internal/fr;->a(Landroid/app/Activity;Lcom/tapjoy/internal/fn;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tapjoy/internal/fr;->c:Ljava/lang/String;

    aput-object v4, v0, v3
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    :cond_1
    const-string v0, "Failed to show the content for \"{}\" caused by no registration of TJContentActivity"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tapjoy/internal/fr;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tapjoy/internal/fj;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tapjoy/internal/fr;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/fn;->b(Ljava/lang/String;Lcom/tapjoy/internal/ey;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/fr;->d:Lcom/tapjoy/internal/gh;

    iget-object v1, v0, Lcom/tapjoy/internal/gh;->c:Lcom/tapjoy/internal/gk;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/tapjoy/internal/gh;->c:Lcom/tapjoy/internal/gk;

    iget-object v1, v1, Lcom/tapjoy/internal/gk;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/tapjoy/internal/gh;->m:Lcom/tapjoy/internal/gi;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tapjoy/internal/gh;->m:Lcom/tapjoy/internal/gi;

    iget-object v1, v1, Lcom/tapjoy/internal/gi;->a:Lcom/tapjoy/internal/gk;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tapjoy/internal/gh;->m:Lcom/tapjoy/internal/gi;

    iget-object v1, v1, Lcom/tapjoy/internal/gi;->a:Lcom/tapjoy/internal/gk;

    iget-object v1, v1, Lcom/tapjoy/internal/gk;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, v0, Lcom/tapjoy/internal/gh;->b:Lcom/tapjoy/internal/gk;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/tapjoy/internal/gh;->f:Lcom/tapjoy/internal/gk;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/tapjoy/internal/gh;->b:Lcom/tapjoy/internal/gk;

    iget-object v1, v1, Lcom/tapjoy/internal/gk;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/tapjoy/internal/gh;->f:Lcom/tapjoy/internal/gk;

    iget-object v1, v1, Lcom/tapjoy/internal/gk;->b:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, v0, Lcom/tapjoy/internal/gh;->a:Lcom/tapjoy/internal/gk;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/tapjoy/internal/gh;->e:Lcom/tapjoy/internal/gk;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/tapjoy/internal/gh;->a:Lcom/tapjoy/internal/gk;

    iget-object v1, v1, Lcom/tapjoy/internal/gk;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/tapjoy/internal/gh;->e:Lcom/tapjoy/internal/gk;

    iget-object v0, v0, Lcom/tapjoy/internal/gk;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/fr;->e:Lcom/tapjoy/internal/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fr;->e:Lcom/tapjoy/internal/e;

    invoke-virtual {v0}, Lcom/tapjoy/internal/e;->dismiss()V

    :cond_0
    return-void
.end method
