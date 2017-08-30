.class public abstract Lcom/twitter/sdk/android/core/identity/a;
.super Ljava/lang/Object;


# instance fields
.field protected final a:I

.field private final b:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private final c:Lcom/twitter/sdk/android/core/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/a;->b:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/identity/a;->c:Lcom/twitter/sdk/android/core/c;

    iput p3, p0, Lcom/twitter/sdk/android/core/identity/a;->a:I

    return-void
.end method


# virtual methods
.method a()Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/a;->b:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    return-object v0
.end method

.method public abstract a(Landroid/app/Activity;)Z
.end method
