.class public Lcom/digits/sdk/android/ac$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digits/sdk/android/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/digits/sdk/android/as;

.field b:I

.field c:Lcom/digits/sdk/android/bp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/digits/sdk/android/ac$a;->b:I

    return-void
.end method


# virtual methods
.method public a()Lcom/digits/sdk/android/ac;
    .locals 3

    iget-object v0, p0, Lcom/digits/sdk/android/ac$a;->c:Lcom/digits/sdk/android/bp;

    if-nez v0, :cond_0

    new-instance v0, Lcom/digits/sdk/android/aa;

    invoke-direct {v0}, Lcom/digits/sdk/android/aa;-><init>()V

    iput-object v0, p0, Lcom/digits/sdk/android/ac$a;->c:Lcom/digits/sdk/android/bp;

    :cond_0
    sget-object v0, Lcom/digits/sdk/android/internal/b;->a:Lcom/digits/sdk/android/internal/b;

    iget-object v1, p0, Lcom/digits/sdk/android/ac$a;->c:Lcom/digits/sdk/android/bp;

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/internal/b;->a(Lcom/digits/sdk/android/bp;)V

    new-instance v0, Lcom/digits/sdk/android/ac;

    iget v1, p0, Lcom/digits/sdk/android/ac$a;->b:I

    iget-object v2, p0, Lcom/digits/sdk/android/ac$a;->a:Lcom/digits/sdk/android/as;

    invoke-direct {v0, v1, v2}, Lcom/digits/sdk/android/ac;-><init>(ILcom/digits/sdk/android/as;)V

    return-object v0
.end method
