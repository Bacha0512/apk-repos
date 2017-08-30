.class public abstract Lcom/digits/sdk/android/internal/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digits/sdk/android/internal/c$b;,
        Lcom/digits/sdk/android/internal/c$a;,
        Lcom/digits/sdk/android/internal/c$d;,
        Lcom/digits/sdk/android/internal/c$c;
    }
.end annotation


# static fields
.field public static final a:Lcom/digits/sdk/android/internal/c$c;

.field public static final b:Lcom/digits/sdk/android/internal/c$a;

.field public static final c:Lcom/digits/sdk/android/internal/c$b;

.field public static final d:Lcom/digits/sdk/android/internal/c$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/digits/sdk/android/internal/c$c;

    invoke-direct {v0}, Lcom/digits/sdk/android/internal/c$c;-><init>()V

    sput-object v0, Lcom/digits/sdk/android/internal/c;->a:Lcom/digits/sdk/android/internal/c$c;

    new-instance v0, Lcom/digits/sdk/android/internal/c$a;

    invoke-direct {v0}, Lcom/digits/sdk/android/internal/c$a;-><init>()V

    sput-object v0, Lcom/digits/sdk/android/internal/c;->b:Lcom/digits/sdk/android/internal/c$a;

    new-instance v0, Lcom/digits/sdk/android/internal/c$b;

    invoke-direct {v0}, Lcom/digits/sdk/android/internal/c$b;-><init>()V

    sput-object v0, Lcom/digits/sdk/android/internal/c;->c:Lcom/digits/sdk/android/internal/c$b;

    new-instance v0, Lcom/digits/sdk/android/internal/c$d;

    invoke-direct {v0}, Lcom/digits/sdk/android/internal/c$d;-><init>()V

    sput-object v0, Lcom/digits/sdk/android/internal/c;->d:Lcom/digits/sdk/android/internal/c$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/pm/ResolveInfo;Landroid/content/Context;Landroid/os/Bundle;Lcom/digits/sdk/android/bp;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public abstract a(Ljava/lang/String;)Z
.end method
