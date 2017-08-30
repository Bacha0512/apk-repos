.class public final Lcom/tapjoy/internal/fo;
.super Lcom/tapjoy/internal/r;


# static fields
.field private static c:Lcom/tapjoy/internal/fo;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/fo$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/fo$1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/r;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/t;)V

    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)I
    .locals 5

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :try_start_0
    const-string v3, "drawable"

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "meta-data of {} invalid"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    sget-boolean v3, Lcom/tapjoy/internal/fj;->a:Z

    if-eqz v3, :cond_1

    const-string v3, "Tapjoy"

    const/4 v4, 0x4

    invoke-static {v4, v3, v0, v1}, Lcom/tapjoy/internal/ac;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/tapjoy/TapjoyReceiver;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.tapjoy.PUSH_CLICK"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.tapjoy.PUSH_ID"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p6, :cond_0

    const-string v0, "com.tapjoy.PUSH_PAYLOAD"

    invoke-virtual {v2, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p7, :cond_1

    const-string v0, "com.tapjoy.PUSH_PLACEMENT"

    invoke-virtual {v2, v0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/high16 v0, 0x8000000

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ne v3, v4, :cond_2

    const/high16 v0, 0x10000000

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p8, v2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_0
    return-object v1

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    :cond_4
    :goto_1
    if-eqz p4, :cond_5

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    :cond_5
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.tapjoy.notification.icon"

    invoke-static {v0, v4, p0}, Lcom/tapjoy/internal/fo;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_6

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v0, :cond_b

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    :cond_6
    :goto_2
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.tapjoy.notification.icon.large"

    invoke-static {v3, v4, p0}, Lcom/tapjoy/internal/fo;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_7
    new-instance v3, Lcom/tapjoy/internal/a$d;

    invoke-direct {v3, p0}, Lcom/tapjoy/internal/a$d;-><init>(Landroid/content/Context;)V

    iget-object v4, v3, Lcom/tapjoy/internal/a$d;->r:Landroid/app/Notification;

    iput v0, v4, Landroid/app/Notification;->icon:I

    iget-object v0, v3, Lcom/tapjoy/internal/a$d;->r:Landroid/app/Notification;

    iput-object p2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iput-object p2, v3, Lcom/tapjoy/internal/a$d;->b:Ljava/lang/CharSequence;

    iput-object p3, v3, Lcom/tapjoy/internal/a$d;->c:Ljava/lang/CharSequence;

    iput-object v2, v3, Lcom/tapjoy/internal/a$d;->d:Landroid/app/PendingIntent;

    iget-object v0, v3, Lcom/tapjoy/internal/a$d;->r:Landroid/app/Notification;

    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    new-instance v0, Lcom/tapjoy/internal/a$c;

    invoke-direct {v0}, Lcom/tapjoy/internal/a$c;-><init>()V

    iput-object p2, v0, Lcom/tapjoy/internal/a$c;->e:Ljava/lang/CharSequence;

    iput-object p3, v0, Lcom/tapjoy/internal/a$c;->a:Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/a$d;->a(Lcom/tapjoy/internal/a$l;)Lcom/tapjoy/internal/a$d;

    move-result-object v0

    if-eqz p5, :cond_8

    iget-object v2, v0, Lcom/tapjoy/internal/a$d;->r:Landroid/app/Notification;

    const/4 v3, 0x1

    iput v3, v2, Landroid/app/Notification;->defaults:I

    :cond_8
    if-eqz v1, :cond_9

    iput-object v1, v0, Lcom/tapjoy/internal/a$d;->g:Landroid/graphics/Bitmap;

    :cond_9
    invoke-static {}, Lcom/tapjoy/internal/a;->a()Lcom/tapjoy/internal/a$f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tapjoy/internal/a$f;->a(Lcom/tapjoy/internal/a$d;)Landroid/app/Notification;

    move-result-object v1

    goto :goto_0

    :cond_a
    if-eqz p4, :cond_4

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    goto :goto_1

    :cond_b
    const v0, 0x1080093

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/tapjoy/internal/fo;
    .locals 2

    const-class v1, Lcom/tapjoy/internal/fo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tapjoy/internal/fo;->c:Lcom/tapjoy/internal/fo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tapjoy/internal/fo;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/fo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/internal/fo;->c:Lcom/tapjoy/internal/fo;

    :cond_0
    sget-object v0, Lcom/tapjoy/internal/fo;->c:Lcom/tapjoy/internal/fo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1}, Lcom/tapjoy/internal/fm;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fm;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tapjoy/internal/fm;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 13

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v0, "fiverocks"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {p1}, Lcom/tapjoy/internal/fp;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fp;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    iget-boolean v0, v0, Lcom/tapjoy/internal/gd$z$a;->o:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/tapjoy/internal/fm;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fm;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/fm;->g:Lcom/tapjoy/internal/fl;

    sget-object v2, Lcom/tapjoy/internal/gd$i;->a:Lcom/tapjoy/internal/gd$i;

    const-string v3, "push_ignore"

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$i;Ljava/lang/String;)Lcom/tapjoy/internal/gd$c$a;

    move-result-object v2

    invoke-static {}, Lcom/tapjoy/internal/gd$p;->k()Lcom/tapjoy/internal/gd$p$a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tapjoy/internal/gd$p$a;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gd$p$a;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tapjoy/internal/gd$c$a;->a(Lcom/tapjoy/internal/gd$p$a;)Lcom/tapjoy/internal/gd$c$a;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$c$a;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "title"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v0, "rich"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    const-string v0, "sound"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    const-string v0, "important"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    const-string v0, "payload"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "always"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    const/4 v0, 0x1

    :goto_1
    const-string v2, "repeatable"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v7, "true"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    const/4 v2, 0x1

    move v9, v2

    :goto_2
    const-string v2, "placement"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "nid"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/fo;->b(Ljava/lang/Object;)I

    move-result v8

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/tapjoy/internal/fm;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fm;->d()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-static {v4}, Lcom/tapjoy/internal/cr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v10}, Lcom/tapjoy/internal/fo;->a(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v11}, Lcom/tapjoy/internal/fo;->a(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v12}, Lcom/tapjoy/internal/fo;->a(Ljava/lang/Object;)Z

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/tapjoy/internal/fo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v2

    invoke-static {p1}, Lcom/tapjoy/internal/fm;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fm;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fm;->b(Landroid/content/Context;)V

    iget-object v3, v0, Lcom/tapjoy/internal/fm;->f:Lcom/tapjoy/internal/fp;

    invoke-virtual {v3, v1, v4, v5, v9}, Lcom/tapjoy/internal/fp;->a(Ljava/lang/String;JZ)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v0, v0, Lcom/tapjoy/internal/fm;->g:Lcom/tapjoy/internal/fl;

    sget-object v3, Lcom/tapjoy/internal/gd$i;->a:Lcom/tapjoy/internal/gd$i;

    const-string v4, "push_show"

    invoke-virtual {v0, v3, v4}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$i;Ljava/lang/String;)Lcom/tapjoy/internal/gd$c$a;

    move-result-object v3

    invoke-static {}, Lcom/tapjoy/internal/gd$p;->k()Lcom/tapjoy/internal/gd$p$a;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/tapjoy/internal/gd$p$a;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gd$p$a;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tapjoy/internal/gd$c$a;->a(Lcom/tapjoy/internal/gd$p$a;)Lcom/tapjoy/internal/gd$c$a;

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$c$a;)V

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_4

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v2, 0x0

    move v9, v2

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/fo;->a()Z

    return-void
.end method

.method protected final c(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return v2
.end method

.method protected final d(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    return v1
.end method

.method final e(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v2

    iget-object v1, p0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-super {p0, v1}, Lcom/tapjoy/internal/r;->a(Landroid/content/Context;)V

    aget-object v0, v0, v2

    invoke-super {p0, v0}, Lcom/tapjoy/internal/r;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
