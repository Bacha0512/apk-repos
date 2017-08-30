.class Lcom/a/a/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/a/a/d;


# instance fields
.field private final a:Lcom/crashlytics/android/answers/Answers;


# direct methods
.method private constructor <init>(Lcom/crashlytics/android/answers/Answers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/a/a;->a:Lcom/crashlytics/android/answers/Answers;

    return-void
.end method

.method public static a()Lcom/a/a/a/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoClassDefFoundError;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/a/a;->a(Lcom/crashlytics/android/answers/Answers;)Lcom/a/a/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/crashlytics/android/answers/Answers;)Lcom/a/a/a/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Answers must be initialized before logging kit events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/a/a/a/a/a;

    invoke-direct {v0, p0}, Lcom/a/a/a/a/a;-><init>(Lcom/crashlytics/android/answers/Answers;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/a/a/a/a/c;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/a/a;->a:Lcom/crashlytics/android/answers/Answers;

    invoke-virtual {p1}, Lcom/a/a/a/a/c;->a()Lcom/crashlytics/android/answers/CustomEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnswersKitEventLogger"

    const-string v2, "Unexpected error sending Answers event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
