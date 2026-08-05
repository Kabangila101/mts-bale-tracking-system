.class Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;
.super Ljava/lang/Object;
.source "CursorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/db/sqlite/CursorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityTempCache"
.end annotation


# static fields
.field private static final cache:Lcom/lidroid/xutils/util/core/DoubleKeyValueMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/util/core/DoubleKeyValueMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static seq:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 110
    new-instance v0, Lcom/lidroid/xutils/util/core/DoubleKeyValueMap;

    invoke-direct {v0}, Lcom/lidroid/xutils/util/core/DoubleKeyValueMap;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;->cache:Lcom/lidroid/xutils/util/core/DoubleKeyValueMap;

    const-wide/16 v0, 0x0

    .line 112
    sput-wide v0, Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;->seq:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 122
    sget-object v0, Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;->cache:Lcom/lidroid/xutils/util/core/DoubleKeyValueMap;

    invoke-virtual {v0, p0, p1}, Lcom/lidroid/xutils/util/core/DoubleKeyValueMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static put(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 116
    sget-object v0, Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;->cache:Lcom/lidroid/xutils/util/core/DoubleKeyValueMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0}, Lcom/lidroid/xutils/util/core/DoubleKeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static setSeq(J)V
    .locals 3

    .line 126
    sget-wide v0, Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;->seq:J

    cmp-long v2, v0, p0

    if-eqz v2, :cond_0

    .line 127
    sget-object v0, Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;->cache:Lcom/lidroid/xutils/util/core/DoubleKeyValueMap;

    invoke-virtual {v0}, Lcom/lidroid/xutils/util/core/DoubleKeyValueMap;->clear()V

    .line 128
    sput-wide p0, Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;->seq:J

    :cond_0
    return-void
.end method
