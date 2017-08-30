.class public Lnet/pubnative/player/VASTParser;
.super Landroid/os/AsyncTask;
.source "VASTParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/player/VASTParser$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Lnet/pubnative/player/model/VASTModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final ERROR_EXCEEDED_WRAPPER_LIMIT:I = 0x4

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_POST_VALIDATION:I = 0x3

.field public static final ERROR_XML_OPEN_OR_READ:I = 0x1

.field public static final ERROR_XML_PARSE:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lnet/pubnative/player/VASTParser$Listener;

.field private resultError:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lnet/pubnative/player/VASTParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/player/VASTParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 53
    iput-object v0, p0, Lnet/pubnative/player/VASTParser;->context:Landroid/content/Context;

    .line 54
    iput-object v0, p0, Lnet/pubnative/player/VASTParser;->listener:Lnet/pubnative/player/VASTParser$Listener;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lnet/pubnative/player/VASTParser;->resultError:I

    .line 65
    iput-object p1, p0, Lnet/pubnative/player/VASTParser;->context:Landroid/content/Context;

    .line 66
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnet/pubnative/player/VASTParser;->doInBackground([Ljava/lang/String;)Lnet/pubnative/player/model/VASTModel;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Lnet/pubnative/player/model/VASTModel;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 79
    sget-object v5, Lnet/pubnative/player/VASTParser;->TAG:Ljava/lang/String;

    const-string v6, "doInBackground"

    invoke-static {v5, v6}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v3, 0x0

    .line 82
    .local v3, "result":Lnet/pubnative/player/model/VASTModel;
    iput v7, p0, Lnet/pubnative/player/VASTParser;->resultError:I

    .line 84
    const/4 v4, 0x0

    .line 85
    .local v4, "vastXML":Ljava/lang/String;
    array-length v5, p1

    if-lez v5, :cond_0

    .line 86
    aget-object v4, p1, v7

    .line 89
    :cond_0
    if-eqz v4, :cond_1

    .line 91
    new-instance v1, Lnet/pubnative/player/util/DefaultMediaPicker;

    iget-object v5, p0, Lnet/pubnative/player/VASTParser;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Lnet/pubnative/player/util/DefaultMediaPicker;-><init>(Landroid/content/Context;)V

    .line 92
    .local v1, "mediaPicker":Lnet/pubnative/player/processor/VASTMediaPicker;
    new-instance v2, Lnet/pubnative/player/processor/VASTProcessor;

    invoke-direct {v2, v1}, Lnet/pubnative/player/processor/VASTProcessor;-><init>(Lnet/pubnative/player/processor/VASTMediaPicker;)V

    .line 94
    .local v2, "processor":Lnet/pubnative/player/processor/VASTProcessor;
    aget-object v5, p1, v7

    invoke-virtual {v2, v5}, Lnet/pubnative/player/processor/VASTProcessor;->process(Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, "error":I
    if-nez v0, :cond_1

    .line 98
    invoke-virtual {v2}, Lnet/pubnative/player/processor/VASTProcessor;->getModel()Lnet/pubnative/player/model/VASTModel;

    move-result-object v3

    .line 102
    .end local v0    # "error":I
    .end local v1    # "mediaPicker":Lnet/pubnative/player/processor/VASTMediaPicker;
    .end local v2    # "processor":Lnet/pubnative/player/processor/VASTProcessor;
    :cond_1
    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, Lnet/pubnative/player/model/VASTModel;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnet/pubnative/player/VASTParser;->onPostExecute(Lnet/pubnative/player/model/VASTModel;)V

    return-void
.end method

.method protected onPostExecute(Lnet/pubnative/player/model/VASTModel;)V
    .locals 2
    .param p1, "result"    # Lnet/pubnative/player/model/VASTModel;

    .prologue
    .line 108
    sget-object v0, Lnet/pubnative/player/VASTParser;->TAG:Ljava/lang/String;

    const-string v1, "onPostExecute"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lnet/pubnative/player/VASTParser;->listener:Lnet/pubnative/player/VASTParser$Listener;

    if-eqz v0, :cond_0

    .line 112
    if-nez p1, :cond_1

    .line 114
    iget-object v0, p0, Lnet/pubnative/player/VASTParser;->listener:Lnet/pubnative/player/VASTParser$Listener;

    iget v1, p0, Lnet/pubnative/player/VASTParser;->resultError:I

    invoke-interface {v0, v1}, Lnet/pubnative/player/VASTParser$Listener;->onVASTParserError(I)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lnet/pubnative/player/VASTParser;->listener:Lnet/pubnative/player/VASTParser$Listener;

    invoke-interface {v0, p1}, Lnet/pubnative/player/VASTParser$Listener;->onVASTParserFinished(Lnet/pubnative/player/model/VASTModel;)V

    goto :goto_0
.end method

.method public setListener(Lnet/pubnative/player/VASTParser$Listener;)Lnet/pubnative/player/VASTParser;
    .locals 2
    .param p1, "listener"    # Lnet/pubnative/player/VASTParser$Listener;

    .prologue
    .line 70
    sget-object v0, Lnet/pubnative/player/VASTParser;->TAG:Ljava/lang/String;

    const-string v1, "setListener"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lnet/pubnative/player/VASTParser;->listener:Lnet/pubnative/player/VASTParser$Listener;

    .line 73
    return-object p0
.end method
