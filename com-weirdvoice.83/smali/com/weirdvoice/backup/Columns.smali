.class public Lcom/weirdvoice/backup/Columns;
.super Ljava/lang/Object;
.source "Columns.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/backup/Columns$Type;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$weirdvoice$backup$Columns$Type:[I


# instance fields
.field private names:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private types:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/weirdvoice/backup/Columns$Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$weirdvoice$backup$Columns$Type()[I
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/weirdvoice/backup/Columns;->$SWITCH_TABLE$com$weirdvoice$backup$Columns$Type:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/weirdvoice/backup/Columns$Type;->values()[Lcom/weirdvoice/backup/Columns$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/weirdvoice/backup/Columns$Type;->BOOLEAN:Lcom/weirdvoice/backup/Columns$Type;

    invoke-virtual {v1}, Lcom/weirdvoice/backup/Columns$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/weirdvoice/backup/Columns$Type;->DOUBLE:Lcom/weirdvoice/backup/Columns$Type;

    invoke-virtual {v1}, Lcom/weirdvoice/backup/Columns$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/weirdvoice/backup/Columns$Type;->FLOAT:Lcom/weirdvoice/backup/Columns$Type;

    invoke-virtual {v1}, Lcom/weirdvoice/backup/Columns$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/weirdvoice/backup/Columns$Type;->INT:Lcom/weirdvoice/backup/Columns$Type;

    invoke-virtual {v1}, Lcom/weirdvoice/backup/Columns$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/weirdvoice/backup/Columns$Type;->LONG:Lcom/weirdvoice/backup/Columns$Type;

    invoke-virtual {v1}, Lcom/weirdvoice/backup/Columns$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/weirdvoice/backup/Columns$Type;->STRING:Lcom/weirdvoice/backup/Columns$Type;

    invoke-virtual {v1}, Lcom/weirdvoice/backup/Columns$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/weirdvoice/backup/Columns;->$SWITCH_TABLE$com$weirdvoice$backup$Columns$Type:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 3
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "classes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/weirdvoice/backup/Columns;->names:Ljava/util/ArrayList;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/weirdvoice/backup/Columns;->types:Ljava/util/ArrayList;

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 68
    return-void

    .line 54
    :cond_0
    aget-object v1, p2, v0

    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_2

    .line 55
    iget-object v1, p0, Lcom/weirdvoice/backup/Columns;->types:Ljava/util/ArrayList;

    sget-object v2, Lcom/weirdvoice/backup/Columns$Type;->STRING:Lcom/weirdvoice/backup/Columns$Type;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 52
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_2
    aget-object v1, p2, v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_3

    aget-object v1, p2, v0

    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_4

    .line 57
    :cond_3
    iget-object v1, p0, Lcom/weirdvoice/backup/Columns;->types:Ljava/util/ArrayList;

    sget-object v2, Lcom/weirdvoice/backup/Columns$Type;->INT:Lcom/weirdvoice/backup/Columns$Type;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 58
    :cond_4
    aget-object v1, p2, v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_5

    aget-object v1, p2, v0

    const-class v2, Ljava/lang/Long;

    if-ne v1, v2, :cond_6

    .line 59
    :cond_5
    iget-object v1, p0, Lcom/weirdvoice/backup/Columns;->types:Ljava/util/ArrayList;

    sget-object v2, Lcom/weirdvoice/backup/Columns$Type;->LONG:Lcom/weirdvoice/backup/Columns$Type;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 60
    :cond_6
    aget-object v1, p2, v0

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_7

    aget-object v1, p2, v0

    const-class v2, Ljava/lang/Float;

    if-ne v1, v2, :cond_8

    .line 61
    :cond_7
    iget-object v1, p0, Lcom/weirdvoice/backup/Columns;->types:Ljava/util/ArrayList;

    sget-object v2, Lcom/weirdvoice/backup/Columns$Type;->FLOAT:Lcom/weirdvoice/backup/Columns$Type;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 62
    :cond_8
    aget-object v1, p2, v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_9

    aget-object v1, p2, v0

    const-class v2, Ljava/lang/Double;

    if-ne v1, v2, :cond_a

    .line 63
    :cond_9
    iget-object v1, p0, Lcom/weirdvoice/backup/Columns;->types:Ljava/util/ArrayList;

    sget-object v2, Lcom/weirdvoice/backup/Columns$Type;->DOUBLE:Lcom/weirdvoice/backup/Columns$Type;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 64
    :cond_a
    aget-object v1, p2, v0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_b

    aget-object v1, p2, v0

    const-class v2, Ljava/lang/Boolean;

    if-ne v1, v2, :cond_1

    .line 65
    :cond_b
    iget-object v1, p0, Lcom/weirdvoice/backup/Columns;->types:Ljava/util/ArrayList;

    sget-object v2, Lcom/weirdvoice/backup/Columns$Type;->BOOLEAN:Lcom/weirdvoice/backup/Columns$Type;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private static j2cvBoolean(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "j"    # Lorg/json/JSONObject;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 193
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 194
    .local v0, "v":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v0    # "v":Z
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static j2cvDouble(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .param p0, "j"    # Lorg/json/JSONObject;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 185
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 186
    .local v0, "v":D
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v0    # "v":D
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static j2cvFloat(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .param p0, "j"    # Lorg/json/JSONObject;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 177
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v0, v2

    .line 178
    .local v0, "v":F
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v0    # "v":F
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static j2cvInt(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "j"    # Lorg/json/JSONObject;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 153
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 154
    .local v0, "v":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v0    # "v":I
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static j2cvLong(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .param p0, "j"    # Lorg/json/JSONObject;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 161
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 162
    .local v0, "v":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v0    # "v":J
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static j2cvString(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "j"    # Lorg/json/JSONObject;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 169
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "v":Ljava/lang/String;
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v0    # "v":Ljava/lang/String;
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public contentValueToJSON(Landroid/content/ContentValues;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 86
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 87
    .local v2, "json":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/weirdvoice/backup/Columns;->names:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 120
    return-object v2

    .line 88
    :cond_0
    iget-object v4, p0, Lcom/weirdvoice/backup/Columns;->names:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 87
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/weirdvoice/backup/Columns;->names:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 93
    .local v3, "name":Ljava/lang/String;
    invoke-static {}, Lcom/weirdvoice/backup/Columns;->$SWITCH_TABLE$com$weirdvoice$backup$Columns$Type()[I

    move-result-object v5

    iget-object v4, p0, Lcom/weirdvoice/backup/Columns;->types:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/weirdvoice/backup/Columns$Type;

    invoke-virtual {v4}, Lcom/weirdvoice/backup/Columns$Type;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 113
    const-string v4, "Col"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid type, can\'t unserialize "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/weirdvoice/backup/Columns;->types:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 115
    .end local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "Col"

    const-string v5, "Invalid type, can\'t unserialize "

    invoke-static {v4, v5, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 95
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v3    # "name":Ljava/lang/String;
    :pswitch_0
    :try_start_1
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 98
    :pswitch_1
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 101
    :pswitch_2
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 104
    :pswitch_3
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 107
    :pswitch_4
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 110
    :pswitch_5
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public hasField(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public jsonToContentValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 5
    .param p1, "j"    # Lorg/json/JSONObject;

    .prologue
    .line 124
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 125
    .local v0, "cv":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/weirdvoice/backup/Columns;->names:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 148
    return-object v0

    .line 126
    :cond_0
    iget-object v3, p0, Lcom/weirdvoice/backup/Columns;->names:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 127
    .local v2, "name":Ljava/lang/String;
    invoke-static {}, Lcom/weirdvoice/backup/Columns;->$SWITCH_TABLE$com$weirdvoice$backup$Columns$Type()[I

    move-result-object v4

    iget-object v3, p0, Lcom/weirdvoice/backup/Columns;->types:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/weirdvoice/backup/Columns$Type;

    invoke-virtual {v3}, Lcom/weirdvoice/backup/Columns$Type;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 125
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :pswitch_0
    invoke-static {p1, v0, v2}, Lcom/weirdvoice/backup/Columns;->j2cvString(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :pswitch_1
    invoke-static {p1, v0, v2}, Lcom/weirdvoice/backup/Columns;->j2cvInt(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_1

    .line 135
    :pswitch_2
    invoke-static {p1, v0, v2}, Lcom/weirdvoice/backup/Columns;->j2cvLong(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_1

    .line 138
    :pswitch_3
    invoke-static {p1, v0, v2}, Lcom/weirdvoice/backup/Columns;->j2cvFloat(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :pswitch_4
    invoke-static {p1, v0, v2}, Lcom/weirdvoice/backup/Columns;->j2cvDouble(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_1

    .line 144
    :pswitch_5
    invoke-static {p1, v0, v2}, Lcom/weirdvoice/backup/Columns;->j2cvBoolean(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_1

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public removeColumn(Ljava/lang/String;)Z
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v1, p0, Lcom/weirdvoice/backup/Columns;->names:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 72
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 73
    const/4 v1, 0x0

    .line 77
    :goto_0
    return v1

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/weirdvoice/backup/Columns;->names:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lcom/weirdvoice/backup/Columns;->types:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 77
    const/4 v1, 0x1

    goto :goto_0
.end method
