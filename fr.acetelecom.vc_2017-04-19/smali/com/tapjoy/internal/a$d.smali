.class public final Lcom/tapjoy/internal/a$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field public d:Landroid/app/PendingIntent;

.field e:Landroid/app/PendingIntent;

.field f:Landroid/widget/RemoteViews;

.field public g:Landroid/graphics/Bitmap;

.field h:Ljava/lang/CharSequence;

.field i:I

.field j:I

.field k:Z

.field l:Lcom/tapjoy/internal/a$l;

.field m:Ljava/lang/CharSequence;

.field n:I

.field o:I

.field p:Z

.field q:Ljava/util/ArrayList;

.field public r:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/a$d;->q:Ljava/util/ArrayList;

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/a$d;->r:Landroid/app/Notification;

    iput-object p1, p0, Lcom/tapjoy/internal/a$d;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/tapjoy/internal/a$d;->r:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    iget-object v0, p0, Lcom/tapjoy/internal/a$d;->r:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/a$d;->j:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/a$l;)Lcom/tapjoy/internal/a$d;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/a$d;->l:Lcom/tapjoy/internal/a$l;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/tapjoy/internal/a$d;->l:Lcom/tapjoy/internal/a$l;

    iget-object v0, p0, Lcom/tapjoy/internal/a$d;->l:Lcom/tapjoy/internal/a$l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/a$d;->l:Lcom/tapjoy/internal/a$l;

    iget-object v1, v0, Lcom/tapjoy/internal/a$l;->d:Lcom/tapjoy/internal/a$d;

    if-eq v1, p0, :cond_0

    iput-object p0, v0, Lcom/tapjoy/internal/a$l;->d:Lcom/tapjoy/internal/a$d;

    iget-object v1, v0, Lcom/tapjoy/internal/a$l;->d:Lcom/tapjoy/internal/a$d;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tapjoy/internal/a$l;->d:Lcom/tapjoy/internal/a$d;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/a$d;->a(Lcom/tapjoy/internal/a$l;)Lcom/tapjoy/internal/a$d;

    :cond_0
    return-object p0
.end method
