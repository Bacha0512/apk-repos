.class public Lnet/pubnative/sdk/core/exceptions/PNException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final ADAPTER_ILLEGAL_ARGUMENTS:Lnet/pubnative/sdk/core/exceptions/PNException;

.field public static final ADAPTER_MISSING_DATA:Lnet/pubnative/sdk/core/exceptions/PNException;

.field public static final ADAPTER_NOT_FOUND:Lnet/pubnative/sdk/core/exceptions/PNException;

.field public static final ADAPTER_NO_FILL:Lnet/pubnative/sdk/core/exceptions/PNException;

.field public static final ADAPTER_TIMEOUT:Lnet/pubnative/sdk/core/exceptions/PNException;

.field public static final ADAPTER_TYPE_NOT_IMPLEMENTED:Lnet/pubnative/sdk/core/exceptions/PNException;

.field public static final PLACEMENT_DISABLED:Lnet/pubnative/sdk/core/exceptions/PNException;

.field public static final PLACEMENT_FREQUENCY_CAP:Lnet/pubnative/sdk/core/exceptions/PNException;

.field public static final PLACEMENT_NOT_FOUND:Lnet/pubnative/sdk/core/exceptions/PNException;

.field public static final PLACEMENT_PACING_CAP:Lnet/pubnative/sdk/core/exceptions/PNException;

.field public static final REQUEST_CONFIG_EMPTY:Lnet/pubnative/sdk/core/exceptions/PNException;

.field public static final REQUEST_CONFIG_INVALID:Lnet/pubnative/sdk/core/exceptions/PNException;

.field public static final REQUEST_LOADING:Lnet/pubnative/sdk/core/exceptions/PNException;

.field public static final REQUEST_NO_FILL:Lnet/pubnative/sdk/core/exceptions/PNException;

.field public static final REQUEST_NO_INTERNET:Lnet/pubnative/sdk/core/exceptions/PNException;

.field public static final REQUEST_PARAMETERS_INVALID:Lnet/pubnative/sdk/core/exceptions/PNException;

.field public static final REQUEST_SHOWN:Lnet/pubnative/sdk/core/exceptions/PNException;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected mErrorCode:I

.field protected mExtraMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const-class v0, Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Lnet/pubnative/sdk/core/exceptions/PNException;

    const/16 v1, 0x3e8

    const-string v2, "Internet connection is not available"

    invoke-direct {v0, v1, v2}, Lnet/pubnative/sdk/core/exceptions/PNException;-><init>(ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->REQUEST_NO_INTERNET:Lnet/pubnative/sdk/core/exceptions/PNException;

    .line 37
    new-instance v0, Lnet/pubnative/sdk/core/exceptions/PNException;

    const/16 v1, 0x3e9

    const-string v2, "Invalid execute parameters"

    invoke-direct {v0, v1, v2}, Lnet/pubnative/sdk/core/exceptions/PNException;-><init>(ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->REQUEST_PARAMETERS_INVALID:Lnet/pubnative/sdk/core/exceptions/PNException;

    .line 38
    new-instance v0, Lnet/pubnative/sdk/core/exceptions/PNException;

    const/16 v1, 0x3ea

    const-string v2, "No fill"

    invoke-direct {v0, v1, v2}, Lnet/pubnative/sdk/core/exceptions/PNException;-><init>(ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->REQUEST_NO_FILL:Lnet/pubnative/sdk/core/exceptions/PNException;

    .line 39
    new-instance v0, Lnet/pubnative/sdk/core/exceptions/PNException;

    const/16 v1, 0x3ed

    const-string v2, "Null or invalid config"

    invoke-direct {v0, v1, v2}, Lnet/pubnative/sdk/core/exceptions/PNException;-><init>(ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->REQUEST_CONFIG_INVALID:Lnet/pubnative/sdk/core/exceptions/PNException;

    .line 40
    new-instance v0, Lnet/pubnative/sdk/core/exceptions/PNException;

    const/16 v1, 0x3ee

    const-string v2, "Retrieved config contains null element"

    invoke-direct {v0, v1, v2}, Lnet/pubnative/sdk/core/exceptions/PNException;-><init>(ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->REQUEST_CONFIG_EMPTY:Lnet/pubnative/sdk/core/exceptions/PNException;

    .line 41
    new-instance v0, Lnet/pubnative/sdk/core/exceptions/PNException;

    const/16 v1, 0x3ef

    const-string v2, "Currently loading"

    invoke-direct {v0, v1, v2}, Lnet/pubnative/sdk/core/exceptions/PNException;-><init>(ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->REQUEST_LOADING:Lnet/pubnative/sdk/core/exceptions/PNException;

    .line 42
    new-instance v0, Lnet/pubnative/sdk/core/exceptions/PNException;

    const/16 v1, 0x3f0

    const-string v2, "Already shown"

    invoke-direct {v0, v1, v2}, Lnet/pubnative/sdk/core/exceptions/PNException;-><init>(ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->REQUEST_SHOWN:Lnet/pubnative/sdk/core/exceptions/PNException;

    .line 46
    new-instance v0, Lnet/pubnative/sdk/core/exceptions/PNException;

    const/16 v1, 0x7d0

    const-string v2, "Null context or adapter data provided"

    invoke-direct {v0, v1, v2}, Lnet/pubnative/sdk/core/exceptions/PNException;-><init>(ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->ADAPTER_MISSING_DATA:Lnet/pubnative/sdk/core/exceptions/PNException;

    .line 47
    new-instance v0, Lnet/pubnative/sdk/core/exceptions/PNException;

    const/16 v1, 0x7d1

    const-string v2, "Invalid data provided"

    invoke-direct {v0, v1, v2}, Lnet/pubnative/sdk/core/exceptions/PNException;-><init>(ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->ADAPTER_ILLEGAL_ARGUMENTS:Lnet/pubnative/sdk/core/exceptions/PNException;

    .line 48
    new-instance v0, Lnet/pubnative/sdk/core/exceptions/PNException;

    const/16 v1, 0x7d2

    const-string v2, "adapter timeout"

    invoke-direct {v0, v1, v2}, Lnet/pubnative/sdk/core/exceptions/PNException;-><init>(ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->ADAPTER_TIMEOUT:Lnet/pubnative/sdk/core/exceptions/PNException;

    .line 49
    new-instance v0, Lnet/pubnative/sdk/core/exceptions/PNException;

    const/16 v1, 0x7d3

    const-string v2, "adapter not found"

    invoke-direct {v0, v1, v2}, Lnet/pubnative/sdk/core/exceptions/PNException;-><init>(ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->ADAPTER_NOT_FOUND:Lnet/pubnative/sdk/core/exceptions/PNException;

    .line 50
    new-instance v0, Lnet/pubnative/sdk/core/exceptions/PNException;

    const/16 v1, 0x7d4

    const-string v2, "adapter doesn\'t implements this type"

    invoke-direct {v0, v1, v2}, Lnet/pubnative/sdk/core/exceptions/PNException;-><init>(ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->ADAPTER_TYPE_NOT_IMPLEMENTED:Lnet/pubnative/sdk/core/exceptions/PNException;

    .line 51
    new-instance v0, Lnet/pubnative/sdk/core/exceptions/PNException;

    const/16 v1, 0x7d5

    const-string v2, "adapter did not fill the request"

    invoke-direct {v0, v1, v2}, Lnet/pubnative/sdk/core/exceptions/PNException;-><init>(ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->ADAPTER_NO_FILL:Lnet/pubnative/sdk/core/exceptions/PNException;

    .line 55
    new-instance v0, Lnet/pubnative/sdk/core/exceptions/PNException;

    const/16 v1, 0xbb9

    const-string v2, "Too many ads: frequency"

    invoke-direct {v0, v1, v2}, Lnet/pubnative/sdk/core/exceptions/PNException;-><init>(ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->PLACEMENT_FREQUENCY_CAP:Lnet/pubnative/sdk/core/exceptions/PNException;

    .line 56
    new-instance v0, Lnet/pubnative/sdk/core/exceptions/PNException;

    const/16 v1, 0xbba

    const-string v2, "Too many ads: pacing"

    invoke-direct {v0, v1, v2}, Lnet/pubnative/sdk/core/exceptions/PNException;-><init>(ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->PLACEMENT_PACING_CAP:Lnet/pubnative/sdk/core/exceptions/PNException;

    .line 57
    new-instance v0, Lnet/pubnative/sdk/core/exceptions/PNException;

    const/16 v1, 0xbbb

    const-string v2, "Placement is disabled"

    invoke-direct {v0, v1, v2}, Lnet/pubnative/sdk/core/exceptions/PNException;-><init>(ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->PLACEMENT_DISABLED:Lnet/pubnative/sdk/core/exceptions/PNException;

    .line 58
    new-instance v0, Lnet/pubnative/sdk/core/exceptions/PNException;

    const/16 v1, 0xbbc

    const-string v2, "Placement not found"

    invoke-direct {v0, v1, v2}, Lnet/pubnative/sdk/core/exceptions/PNException;-><init>(ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->PLACEMENT_NOT_FOUND:Lnet/pubnative/sdk/core/exceptions/PNException;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Exception;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 87
    iput p1, p0, Lnet/pubnative/sdk/core/exceptions/PNException;->mErrorCode:I

    .line 88
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 75
    iput p1, p0, Lnet/pubnative/sdk/core/exceptions/PNException;->mErrorCode:I

    .line 76
    return-void
.end method

.method public static extraException(Ljava/util/Map;)Lnet/pubnative/sdk/core/exceptions/PNException;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Lnet/pubnative/sdk/core/exceptions/PNException;

    const/4 v1, 0x0

    const-string v2, "extra exception"

    invoke-direct {v0, v1, v2}, Lnet/pubnative/sdk/core/exceptions/PNException;-><init>(ILjava/lang/String;)V

    .line 92
    iput-object p0, v0, Lnet/pubnative/sdk/core/exceptions/PNException;->mExtraMap:Ljava/util/Map;

    .line 93
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    check-cast p1, Lnet/pubnative/sdk/core/exceptions/PNException;

    .line 113
    invoke-virtual {p1}, Lnet/pubnative/sdk/core/exceptions/PNException;->getErrorCode()I

    move-result v1

    iget v2, p0, Lnet/pubnative/sdk/core/exceptions/PNException;->mErrorCode:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 115
    :cond_0
    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lnet/pubnative/sdk/core/exceptions/PNException;->mErrorCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PNException ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/pubnative/sdk/core/exceptions/PNException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 129
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 130
    const-string v0, "code"

    invoke-virtual {p0}, Lnet/pubnative/sdk/core/exceptions/PNException;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    const-string v0, "message"

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/exceptions/PNException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/exceptions/PNException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 136
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    const-string v0, "stackTrace"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    :cond_1
    iget-object v0, p0, Lnet/pubnative/sdk/core/exceptions/PNException;->mExtraMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 142
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 143
    iget-object v2, p0, Lnet/pubnative/sdk/core/exceptions/PNException;->mExtraMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 144
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnet/pubnative/sdk/core/exceptions/PNException;->mExtraMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/exceptions/PNException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_2
    return-object v0

    .line 146
    :cond_2
    :try_start_1
    const-string v2, "extraData"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2
.end method
