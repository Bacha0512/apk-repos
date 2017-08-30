.class public Lcom/digits/sdk/android/internal/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/digits/sdk/android/internal/b;


# instance fields
.field private volatile b:Lcom/digits/sdk/android/bp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/digits/sdk/android/internal/b;

    invoke-direct {v0}, Lcom/digits/sdk/android/internal/b;-><init>()V

    sput-object v0, Lcom/digits/sdk/android/internal/b;->a:Lcom/digits/sdk/android/internal/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/digits/sdk/android/bp;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/internal/b;->b:Lcom/digits/sdk/android/bp;

    return-object v0
.end method

.method public a(Lcom/digits/sdk/android/bp;)V
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/internal/b;->b:Lcom/digits/sdk/android/bp;

    return-void
.end method
